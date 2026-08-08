class AddUserToFoods < ActiveRecord::Migration[8.1]
  def change
    add_reference :foods, :user, null: false, foreign_key: true
  end
end
