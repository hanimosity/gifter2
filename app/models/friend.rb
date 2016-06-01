class Friend < ActiveRecord::Base
  validates :user_id, presence: true

  belongs_to :user
  has_many :important_dates
  has_many :friends_holidays
  has_many :gifts
end
