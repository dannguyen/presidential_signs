class President < ActiveRecord::Base

  extend FriendlyId
  friendly_id :popular_name, use: [:slugged]
  
  validates_uniqueness_of :last_name, scope: [:first_name, :middle_name, :suffix]
  has_many :terms
  has_many :signing_statements

  before_save :set_term_data
  scope :signers, ->{ joins(:signing_statements).group(:president_id).select('presidents.*, count(1) AS statement_count').having('statement_count > 0') }


  def self.build_from_sunlight_data(obj)
    p = President.new
    p.first_name = obj['name']['first']
    p.middle_name = obj['name']['middle']
    p.last_name = obj['name']['last']
    p.suffix = obj['name']['suffix']
    p.birthdate = obj['bio']['birthday']
    p.popular_name = [p.first_name, p.last_name].join(' ')

    # create terms
    obj['terms'].select{|t| t['type'] == 'prez'}.each do |t|
      p.terms.build(start_date: t['start'], end_date: t['end'], party: t['party'], means: t['how'])
    end

    return p
  end



  private
  def set_term_data
    self.start_date = terms.chronological.first.start_date
    self.end_date = start_date = terms.chronological.last.end_date
    self.party ||= terms.last.party

    true
  end

end
