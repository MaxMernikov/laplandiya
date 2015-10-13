class Composition < ActiveRecord::Base
  validates :title, :code, presence: true

  has_many :compositions_manufacturers
  has_many :manufacturers, through: :compositions_manufacturers
end
