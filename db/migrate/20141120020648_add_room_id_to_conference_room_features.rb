class AddRoomIdToConferenceRoomFeatures < ActiveRecord::Migration
  def change
    add_column :conference_room_features, :room_id, :integer
    add_column :conference_room_features, :feature_id, :integer
  end
end
