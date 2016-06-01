class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.integer :important_date_id
      t.integer :friends_holiday_id
      t.integer :year_given
      t.text :description
      t.string :name

      t.timestamps

    end
  end
end
