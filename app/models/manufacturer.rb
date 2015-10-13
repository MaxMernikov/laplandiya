class Manufacturer < ActiveRecord::Base
  has_many :compositions_manufacturers
  has_many :compositions, through: :compositions_manufacturers

  has_many :sweets, dependent: :destroy

  validates :title, presence: true
end
