class Sweet < ActiveRecord::Base
  belongs_to :manufacturer
  belongs_to :sweets_category

  validates :title, presence: true
  validates :image, attachment_presence: true
  has_attached_file :image, styles: { preview: '150x176>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  scope :ordered, -> { order(:title) }
end
