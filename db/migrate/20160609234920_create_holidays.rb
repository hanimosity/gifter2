class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.string :name
      t.date :date
      t.string :traditions

      t.timestamps

    end
  end
end
