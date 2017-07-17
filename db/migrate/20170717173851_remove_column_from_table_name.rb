class RemoveColumnFromTableName < ActiveRecord::Migration[5.1]
  def change
    remove_columns :reviews, :awd, :battery, :model
  end
end
