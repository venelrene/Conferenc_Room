class CreateConferenceRoomFeatures < ActiveRecord::Migration
  def change
    create_table :conference_room_features do |t|

      t.timestamps
    end
  end
end
