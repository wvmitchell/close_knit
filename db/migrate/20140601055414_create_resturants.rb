class CreateResturants < ActiveRecord::Migration
  def change
    create_table :resturants do |t|
      t.float :lat
      t.float :lng
      t.string :name
      t.string :address
      t.integer :rating

      t.timestamps
    end
  end
end
