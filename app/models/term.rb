class Term < ActiveRecord::Base
  validates_uniqueness_of :president_id, :scope => :start_date
  belongs_to :president 
  has_many :signing_statements, ->(term){ where("signing_statements.date" => term.start_date..term.end_date) }, :through => :president
  scope :chronological, ->{ order(:start_date)  }


  def length
    end_date - start_date
  end


  def span 
    [start_date, end_date].compact.map{|d| d.strftime "%b %e, %Y"}.join(' - ')
  end

  def self.total_length
    self.sum("end_date - start_date")
  end
end
