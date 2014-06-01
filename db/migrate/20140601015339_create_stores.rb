class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.float :lat
      t.float :lng
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
