class Packing < ActiveRecord::Base
  validates :image, attachment_presence: true
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :packings_weights
  has_many :weights, through: :packings_weights

  scope :ordered, -> { order(:code) }
end
