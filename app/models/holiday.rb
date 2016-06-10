class Holiday < ActiveRecord::Base
  validates :name, presence: true
  validates :date, presence: true

  has_many :friends_holidays, :dependent => :destroy
end
