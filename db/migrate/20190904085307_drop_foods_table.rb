class DropFoodsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :foods
  end
end
