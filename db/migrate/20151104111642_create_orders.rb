class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :phone
      t.string :recently_viewed

      t.timestamps null: false
    end
  end
end
