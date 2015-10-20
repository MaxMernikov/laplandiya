class CreateSweets < ActiveRecord::Migration
  def change
    create_table :sweets do |t|
      t.references :manufacturer, index: true
      t.string :title
      t.attachment :image
      t.references :sweets_category, index: true

      t.timestamps null: false
    end
    add_foreign_key :sweets, :manufacturers
    add_foreign_key :sweets, :sweets_categories
  end
end
