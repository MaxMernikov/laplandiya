class CreatePackings < ActiveRecord::Migration
  def change
    create_table :packings do |t|
      t.integer :code

      t.timestamps null: false
    end
  end
end
