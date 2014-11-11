# == Schema Information
#
# Table name: conference_room_features
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class ConferenceRoomFeature < ActiveRecord::Base
  has_many :rooms, :through => :conference_room_features


end
