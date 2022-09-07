class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.bigint :departure_airport_id
      t.bigint :arrival_airport_id
      t.datetime :start_datetime
      t.integer :duration

      t.timestamps
    end
  end
end
