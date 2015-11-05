class CustomField < ActiveRecord::Base
  attr_accessor :delete_image
  FIELD_TYPE = %w(string text ckeditor array)
  has_attached_file :image
  # validates :image, attachment_presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  scope :ordered, -> { order(:pos, :created_at) }

  before_validation { image.clear if delete_image == '1' }
end
