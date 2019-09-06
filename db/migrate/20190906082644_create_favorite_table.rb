class CreateFavoriteTable < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :food_id
      t.timestamps
    end
    add_index :favorites, :user_id
    add_index :favorites, :food_id
  end
end
