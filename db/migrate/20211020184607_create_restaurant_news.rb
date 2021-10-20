class CreateRestaurantNews < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_news do |t|
      t.string :name
      t.string :address
      t.integer :stars

      t.timestamps
    end
  end
end
