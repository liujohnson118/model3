class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :model
      t.integer :battery
      t.boolean :awd
      t.text :comment

      t.timestamps
    end
  end
end
