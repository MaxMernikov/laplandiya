class Manufacturer < ActiveRecord::Base
  has_many :compositions_manufacturers
  has_many :compositions, through: :compositions_manufacturers

  validates :title, presence: true
end
