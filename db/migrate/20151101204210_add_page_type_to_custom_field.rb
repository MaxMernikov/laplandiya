class AddPageTypeToCustomField < ActiveRecord::Migration
  def change
    add_column :custom_fields, :page_type, :string
  end
end
