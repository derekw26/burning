class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.text :name
      t.string :rows
      t.string :columns

      t.timestamps
    end
  end
end
