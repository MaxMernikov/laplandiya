class CreateKitsPackings < ActiveRecord::Migration
  def change
    create_table :kits_packings do |t|
      t.references :kit, index: true
      t.references :packing, index: true
      t.integer :cost, default: 0
      t.integer :discount, default: 0

      t.timestamps null: false
    end
    add_foreign_key :kits_packings, :kits
    add_foreign_key :kits_packings, :packings
  end
end
