class AddReviewCheckToCars < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :reviewed, :boolean
  end
end
