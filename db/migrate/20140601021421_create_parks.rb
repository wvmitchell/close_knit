class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.string :facilities

      t.timestamps
    end
  end
end
