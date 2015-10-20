class Composition < ActiveRecord::Base
  has_many :compositions_manufacturers
  has_many :manufacturers, through: :compositions_manufacturers
  has_many :kits, dependent: :destroy
  
  validates :title, :code, presence: true

  scope :ordered, -> { order(:created_at) }

  after_create :create_kits

  def create_kits
    Kit.create_kits
  end
end
