class FriendsDate < ActiveRecord::Base
  validates :user_id, presence: true
  validates :important_date_id, presence: true, uniqueness: {:scope => :date}
  validates :date, presence: true
  validates :friend_id, presence: true

  belongs_to :friend
  belongs_to :important_date
  has_many :gifts
end
