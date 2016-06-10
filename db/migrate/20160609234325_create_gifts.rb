class CreateGifts < ActiveRecord::Migration
  def change
    create_table :gifts do |t|
      t.string :friend_id
      t.integer :friends_date_id
      t.integer :friends_holiday_id
      t.integer :year_given
      t.text :description
      t.string :name
      t.integer :user_id

      t.timestamps

    end
  end
end
