class Gift < ActiveRecord::Base
  validates :user, presence: true
  validates :name, presence: true
  validates :year_given, presence: true
  validates :friend_id, presence: true

  belongs_to :user
  belongs_to :friend
  belongs_to :friends_date
  belongs_to :friends_holiday
end
