class CreateImportantDates < ActiveRecord::Migration
  def change
    create_table :important_dates do |t|
      t.date :reminder
      t.integer :friend_id
      t.boolean :card
      t.string :previous_gifts
      t.string :traditions
      t.string :name
      t.date :date

      t.timestamps

    end
  end
end
