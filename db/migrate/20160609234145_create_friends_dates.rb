class CreateFriendsDates < ActiveRecord::Migration
  def change
    create_table :friends_dates do |t|
      t.text :description
      t.text :traditions
      t.date :reminder
      t.date :date
      t.integer :important_date_id
      t.integer :friend_id
      t.integer :user_id

      t.timestamps

    end
  end
end
