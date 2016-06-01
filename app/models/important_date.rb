class ImportantDate < ActiveRecord::Base
  validates :name, presence: true, uniqueness: {:scope => :friend}
  validates :date, presence: true
  validates :friend_id, presence: true

  belongs_to :friend
  belongs_to :user
  has_many :gifts
end
