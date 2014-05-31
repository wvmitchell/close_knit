class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.float :lat
      t.float :lng
      t.integer :value

      t.timestamps
    end
  end
end
