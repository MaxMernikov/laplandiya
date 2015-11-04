class Packing < ActiveRecord::Base
  validates :image, attachment_presence: true
  has_attached_file :image, styles: { preview: '240x150>', big: '420x420>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :packings_weights
  has_many :weights, through: :packings_weights

  scope :ordered, -> { order(:code) }
end
