class ChangeColumnnInPrises < ActiveRecord::Migration[6.0]
  def change
    change_column :prises, :sys, :float
    change_column :prises, :dia, :float
  end
end
