class AddDeletedAtToFoods < ActiveRecord::Migration[8.1]
  def change
    add_column :foods, :deleted_at, :datetime
  end
end
