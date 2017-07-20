class RemoveDeliveredFromCars < ActiveRecord::Migration[5.1]
  def change
    remove_column :cars, :delivered, :boolean
  end
end
