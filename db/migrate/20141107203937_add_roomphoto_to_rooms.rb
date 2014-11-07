class AddRoomphotoToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :roomphoto, :string
  end
end
