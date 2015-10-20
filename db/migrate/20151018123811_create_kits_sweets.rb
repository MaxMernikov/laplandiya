class CreateKitsSweets < ActiveRecord::Migration
  def change
    create_table :kits_sweets do |t|
      t.references :kit, index: true
      t.references :sweet, index: true
      t.integer :count, default: 0

      t.timestamps null: false
    end
    add_foreign_key :kits_sweets, :kits
    add_foreign_key :kits_sweets, :sweets
  end
end
