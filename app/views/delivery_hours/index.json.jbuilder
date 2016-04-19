json.array!(@delivery_hours) do |delivery_hour|
  json.extract! delivery_hour, :id, :monday, :monday_closing_time, :tuesday, :tuesday_closing_time, :wednesday, :wednesday_closing_time, :thursday, :thursday_closing_time, :friday, :friday_closing_time, :saturday, :saturday_closing_time, :sunday, :sunday_closing_time
  json.url delivery_hour_url(delivery_hour, format: :json)
end
