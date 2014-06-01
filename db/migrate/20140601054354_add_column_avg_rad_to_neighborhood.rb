class AddColumnAvgRadToNeighborhood < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :avg_rad, :float
  end
end
