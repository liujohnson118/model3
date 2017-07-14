class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :color
      t.boolean :ap
      t.boolean :awd
      t.boolean :sd
      t.integer :battery
      t.integer :wheel

      t.timestamps
    end
  end
end
