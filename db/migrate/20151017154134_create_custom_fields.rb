class CreateCustomFields < ActiveRecord::Migration
  def change
    create_table :custom_fields do |t|
      t.string :title
      t.string :key
      t.text :value
      t.string :field_type
      t.integer :pos, default: 0

      t.timestamps null: false
    end
  end
end
