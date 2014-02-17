class CreatePresidents < ActiveRecord::Migration
  def change
    create_table :presidents do |t|
      t.string :popular_name
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :suffix
      t.date :birthdate
      t.string :party
      t.date :start_date
      t.date :end_date
      t.string :slug
    end
  end
end
