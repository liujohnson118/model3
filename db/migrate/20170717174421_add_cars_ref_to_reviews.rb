class AddCarsRefToReviews < ActiveRecord::Migration[5.1]
  def change
    add_reference :reviews, :car, foreign_key: true
  end
end
