json.array!(@pickup_hours) do |pickup_hour|
  json.extract! pickup_hour, :id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
  json.url pickup_hour_url(pickup_hour, format: :json)
end
