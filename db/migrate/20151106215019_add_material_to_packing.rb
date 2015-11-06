class AddMaterialToPacking < ActiveRecord::Migration
  def change
    add_column :packings, :material, :string
  end
end
