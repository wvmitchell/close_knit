class AddColumnsToNeighborhood < ActiveRecord::Migration
  def change
    add_column :neighborhoods, :lat, :float
    add_column :neighborhoods, :lng, :float
    add_column :neighborhoods, :name, :string
  end
end
