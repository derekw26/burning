class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :number
      t.text :origin
      t.text :destination
      t.date :date
      t.integer :airplane_id
<<<<<<< HEAD
=======

>>>>>>> 2d4e24829f5ff70cca3528d2a328c083e6bf2794

      t.timestamps
    end
  end
end
