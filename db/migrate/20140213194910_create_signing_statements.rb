class CreateSigningStatements < ActiveRecord::Migration
  def change
    create_table :signing_statements do |t|
      t.string :title
      t.string :named_bill
      t.date :date
      t.string :named_president
      t.integer :president_id
      t.integer :bill_id
      t.text :text
      t.text :notes
      t.text :citation
      t.string :source_url

      t.timestamps
    end
  end
end
