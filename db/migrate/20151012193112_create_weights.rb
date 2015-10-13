class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.string :title
      t.integer :weight
      t.integer :code

      t.timestamps null: false
    end
  end
end
