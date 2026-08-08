class CreateFoods < ActiveRecord::Migration[8.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image_url
      t.integer :calories, null: false
  
      t.timestamps
    end
  end
end
