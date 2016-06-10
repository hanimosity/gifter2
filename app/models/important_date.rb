class ImportantDate < ActiveRecord::Base
  validates :name, presence: true

  has_many :friends_dates, :dependent => :destroy
end
