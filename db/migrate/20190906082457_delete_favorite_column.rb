class DeleteFavoriteColumn < ActiveRecord::Migration[5.2]
  def change
 remove_column :foods, :fav_id
  end
end
