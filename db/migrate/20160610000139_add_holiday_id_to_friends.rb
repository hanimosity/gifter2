class AddHolidayIdToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :holiday_id, :integer
  end
end
