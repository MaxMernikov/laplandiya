class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.references :composition, index: true
      t.references :weight, index: true
      t.boolean :show, default: false

      t.timestamps null: false
    end
    add_foreign_key :kits, :compositions
    add_foreign_key :kits, :weights
  end
end
