class SigningStatement < ActiveRecord::Base

  belongs_to :president
  belongs_to :term, ->{where(president_id: {:term => :president_id})}

  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]

  validates_uniqueness_of :named_president, :scope => [:title, :date]


  scope :chrono, ->{ order('date ASC')}

  def congress_number
    CongressionalNumber.for_date(self.date)
  end

  def extract_and_save_atts!
    self.named_bill = extract_named_bill
    self.named_statute = extract_named_statute
    self.named_public_law = extract_named_public_law

    self.save
  end

  def extract_named_bill
    # from note:
    #Note: This statement, released at of the signing of H. R. 5520 (Pub. Augusta, Ga., was issued at the time Law 85-17, 71 Stat. 15).
    # H. R. 5520 

    house = /(?:H(?:ouse|[\-.])?)/
    senate = /(?:S(?:en)?(?:ate|\.)?)/
    joint = /(?:J(?:oint|[\-.])?)/
    res = /(?:R(?:es|esolution)?(?:[\-.])?)/
    formal_name = /The .{1,34} Act(?: of \d{4})?/

    self.notes[/(?:#{house}|#{senate}) *#{joint}? *#{res} *\d+/] || self.text[formal_name]
  end

  def extract_named_statute
    self.notes[/\d+ Stat\. \d+/]
  end

  def extract_named_public_law
    self.notes[/Public,? (?:Law )?(?:No\.? ?)?\d+-?\d*/]
  end

  # html is a String of HTML data
  #
  # returns a Hash object with the correct attributes
  #    t.string :title
  #    t.string :named_bill
  #    t.date :date
  #    t.string :named_president
  #    t.text :text
  #    t.text :notes
  #    t.text :citation
 
  def self.parse_source_html(html)
    npage = Nokogiri::HTML(html)
    h = HashWithIndifferentAccess.new

    h[:named_president] = npage.search("title").text.split(":")[0].strip
    h[:title] = Loofah.fragment(npage.search('.paperstitle').to_html).to_text.strip.chomp('.')
    h[:date] = Date.parse(Loofah.fragment(npage.search('.docdate').to_html).to_text)

    h[:text] = Loofah.fragment(npage.search('.displaytext').to_html).to_text.strip
    h[:notes] = Loofah.fragment(npage.search('.displaynotes').to_html).to_text.strip
#    h[:citation] = Loofah.fragment(npage.search('.ver10').to_html).to_text

    return h
  end


  def self.create_from_url(url)
    resp = ActiveScraper.get(url)
    hsh = parse_source_html(resp.body)
    hsh[:source_url] = url.to_s

    create(hsh)
  end
end


