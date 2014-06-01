class AddColumnNeighborhoodToPark < ActiveRecord::Migration
  def change
    add_column :parks, :neighborhood, :string
  end
end
