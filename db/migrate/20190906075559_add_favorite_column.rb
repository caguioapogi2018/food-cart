class AddFavoriteColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :fav_id, :integer
  end
end
