class CreateRecCenters < ActiveRecord::Migration
  def change
    create_table :rec_centers do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.string :facilities
      t.string :programs
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
