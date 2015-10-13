class CreatePackings < ActiveRecord::Migration
  def change
    create_table :packings do |t|
      t.integer :code
      t.attachment :image
      t.boolean :show, default: true

      t.timestamps null: false
    end
  end
end
