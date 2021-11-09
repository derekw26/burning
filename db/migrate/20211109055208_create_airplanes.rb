class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.integer :row
      t.integer :column
      t.text :name
      t.integer :id

      t.timestamps
    end
  end
end
