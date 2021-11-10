class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :flight_id
      t.integer :user_id
      t.integer :row
      t.integer :column
      t.boolean :paid
<<<<<<< HEAD
=======
      t.integer "user_id"
      t.integer "flight_id"
>>>>>>> 2d4e24829f5ff70cca3528d2a328c083e6bf2794

      t.timestamps
    end
  end
end
