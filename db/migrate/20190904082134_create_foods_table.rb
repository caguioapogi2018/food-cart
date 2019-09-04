class CreateFoodsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :title
      t.text :description
      t.timestamps
      t.integer :user_id
    end
    add_index :users, :user_id

  end
end
