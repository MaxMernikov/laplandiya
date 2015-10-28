class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :user_name
      t.text :opinion
      t.text :answer
      t.date :date

      t.timestamps null: false
    end
  end
end
