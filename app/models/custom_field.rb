class CustomField < ActiveRecord::Base
  FIELD_TYPE = %w(string text ckeditor array)

  scope :ordered, -> { order(:pos) }
end
