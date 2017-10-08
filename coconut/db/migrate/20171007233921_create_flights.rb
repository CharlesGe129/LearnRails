class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.timestamp :depature
      t.timestamp :arrival
      t.string :destination
      t.decimal :baggage_allowance
      t.integer :capacity

      t.timestamps
    end
  end
end
