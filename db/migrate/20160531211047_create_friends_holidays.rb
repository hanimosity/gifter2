class CreateFriendsHolidays < ActiveRecord::Migration
  def change
    create_table :friends_holidays do |t|
      t.boolean :card
      t.date :reminder
      t.integer :friend_id
      t.integer :holiday_id

      t.timestamps

    end
  end
end
