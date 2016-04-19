class CreatePickupHours < ActiveRecord::Migration
  def change
    create_table :pickup_hours do |t|
      t.time :monday
      t.time :tuesday
      t.time :wednesday
      t.time :thursday
      t.time :friday
      t.time :saturday
      t.time :sunday

      t.timestamps null: false
    end
  end
end
