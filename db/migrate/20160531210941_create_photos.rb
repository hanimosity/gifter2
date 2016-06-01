class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :friend_id
      t.integer :user_id
      t.integer :gift_id
      t.text :caption
      t.string :image

      t.timestamps

    end
  end
end
