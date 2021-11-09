class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :number
      t.text :origin
      t.text :destination
      t.datetime :date
      t.integer :airplane_id

      t.timestamps
    end
  end
end
