class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :restaurant_phone_number
      t.string :full_address
      t.boolean :pickup
      t.boolean :delivery
      t.boolean :accept_orders_for_later

      t.timestamps null: false
    end
  end
end
