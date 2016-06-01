class Gift < ActiveRecord::Base
  validates :name, presence: true
  validates :year_given, presence: true
  validates :user_id, presence: true
  validates :friend_id, presence: true

  belongs_to :user
  belongs_to :friend
  belongs_to :important_date
  belongs_to :friends_holiday
  has_many :photos
end
