class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.integer :president_id
      t.date :start_date
      t.date :end_date
      t.string :means
      t.string :party
    end
  end
end
