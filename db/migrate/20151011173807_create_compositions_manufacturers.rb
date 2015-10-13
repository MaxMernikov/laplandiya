class CreateCompositionsManufacturers < ActiveRecord::Migration
  def change
    create_table :compositions_manufacturers do |t|
      t.references :composition, index: true
      t.references :manufacturer, index: true

      t.timestamps null: false
    end
    add_foreign_key :compositions_manufacturers, :compositions
    add_foreign_key :compositions_manufacturers, :manufacturers
  end
end
