class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :tittle
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
