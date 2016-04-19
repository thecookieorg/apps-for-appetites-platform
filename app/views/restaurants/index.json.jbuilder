json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :restaurant_name, :restaurant_phone_number, :full_address, :pickup, :delivery, :accept_orders_for_later
  json.url restaurant_url(restaurant, format: :json)
end
