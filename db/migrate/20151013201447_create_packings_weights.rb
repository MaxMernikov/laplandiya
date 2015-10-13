class CreatePackingsWeights < ActiveRecord::Migration
  def change
    create_table :packings_weights do |t|
      t.references :packing
      t.references :weight

      t.timestamps null: false
    end
  end
end
