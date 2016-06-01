class FriendsHoliday < ActiveRecord::Base
  validates :friend_id, presence: true
  validates :holiday_id, presence: true

  belongs_to :friend
  belongs_to :holiday
  has_many :gifts
end
