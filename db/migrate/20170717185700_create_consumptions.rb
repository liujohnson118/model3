class CreateConsumptions < ActiveRecord::Migration[5.1]
  def change
    create_table :consumptions do |t|
      t.integer :car_id
      t.integer :battery
      t.float :range

      t.timestamps
    end
  end
end
