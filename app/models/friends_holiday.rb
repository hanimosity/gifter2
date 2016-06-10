class FriendsHoliday < ActiveRecord::Base
  validates :user_id, presence: true
  validates :friend_id, presence: true
  validates :holiday_id, presence: true, uniqueness: {:scope => :friend}

  belongs_to :friend
  belongs_to :holiday
  has_many :gifts, :dependent => :destroy
end
