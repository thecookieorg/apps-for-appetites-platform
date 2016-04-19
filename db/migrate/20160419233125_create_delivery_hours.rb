class CreateDeliveryHours < ActiveRecord::Migration
  def change
    create_table :delivery_hours do |t|
      t.time :monday
      t.time :monday_closing_time
      t.time :tuesday
      t.time :tuesday_closing_time
      t.time :wednesday
      t.time :wednesday_closing_time
      t.time :thursday
      t.time :thursday_closing_time
      t.time :friday
      t.time :friday_closing_time
      t.time :saturday
      t.time :saturday_closing_time
      t.time :sunday
      t.time :sunday_closing_time

      t.timestamps null: false
    end
  end
end
