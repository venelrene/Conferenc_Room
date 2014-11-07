class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :location
      t.string :photo
      t.text :description
      t.integer :squarefootage
      t.date :lastused

      t.timestamps
    end
  end
end
