class CreateFoodsTbl < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :title
      t.string :category
      t.text :description
      t.integer :user_id
    end
    add_index :foods, :user_id
  end
end
