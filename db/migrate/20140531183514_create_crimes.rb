class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.float :lat
      t.float :lng
      t.string :offense
      t.time :time
      t.string :neighborhood

      t.timestamps
    end
  end
end
