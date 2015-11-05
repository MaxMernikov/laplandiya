class AddImageToCustomField < ActiveRecord::Migration
  def change
    add_column :custom_fields, :image_file_name, :string
    add_column :custom_fields, :image_content_type, :string
    add_column :custom_fields, :image_file_size, :integer
    add_column :custom_fields, :image_updated_at, :datetime
  end
end
