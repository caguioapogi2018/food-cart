class AddingTimestamp < ActiveRecord::Migration[5.2]
  def change
    add_column :foods, :created_at, :datetime
    add_column :foods, :updated_at, :datetime
  end
end
