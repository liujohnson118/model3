class AddDeliveryToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :delivered, :boolean
  end
end
