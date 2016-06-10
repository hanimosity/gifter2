class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :user_id
      t.string :photo
      t.string :dislikes
      t.string :name
      t.string :likes

      t.timestamps

    end
  end
end
