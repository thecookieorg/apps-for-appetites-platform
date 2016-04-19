class AddClosingTimeToPickupHours < ActiveRecord::Migration
  def change
    add_column :pickup_hours, :monday_closing_time, :time
    add_column :pickup_hours, :tuesday_closing, :time
    add_column :pickup_hours, :wednesday_closing_time, :time
    add_column :pickup_hours, :thursday_closing_time, :time
    add_column :pickup_hours, :friday_closing_time, :time
    add_column :pickup_hours, :saturday_closing_time, :time
    add_column :pickup_hours, :sunday_closing_time, :time
  end
end
