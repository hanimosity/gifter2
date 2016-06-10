class Friend < ActiveRecord::Base
  validates :user_id, presence: true

  belongs_to :user
  has_many :friends_dates
  has_many :friends_holidays
  has_many :gifts
end
