class CreateSweetsCategories < ActiveRecord::Migration
  def change
    create_table :sweets_categories do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
