class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :name
      t.float :awd_price
      t.float :sd_price
      t.float :ap_price
      t.float :battery_70_price
      t.float :battery_80_price
      t.float :battery_90_price
      t.float :battery_100_price
      t.float :wheel_18_price
      t.float :wheel_19_price

      t.timestamps
    end
  end
end
