class Weight < ActiveRecord::Base
  has_many :packings_weights
  has_many :packings, through: :packings_weights

  validates :title, :weight, :code, presence: true

  scope :ordered, -> { order(:weight) }
end
