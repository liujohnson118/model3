class AddBaseToPrice < ActiveRecord::Migration[5.1]
  def change
    add_column :prices, :base_price, :float
  end
end
