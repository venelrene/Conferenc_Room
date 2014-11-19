# == Schema Information
#
# Table name: conference_room_features
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class ConferenceRoomFeature < ActiveRecord::Base
  attr_accessible :feature_id, :room_id
  belongs_to :rooms
  belongs_to :feature


end
