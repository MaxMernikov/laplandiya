class Weight < ActiveRecord::Base
  has_many :packings_weights
  has_many :packings, through: :packings_weights
  has_many :kits, dependent: :destroy
  has_many :kits_packings, dependent: :destroy

  validates :title, :weight, :code, presence: true

  scope :ordered, -> { order(:weight) }

  after_create :create_kits

  def create_kits
    Kit.create_kits
  end
end
