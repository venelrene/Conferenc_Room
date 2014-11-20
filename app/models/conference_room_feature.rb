# == Schema Information
#
# Table name: conference_room_features
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  room_id    :integer
#  feature_id :integer
#

class ConferenceRoomFeature < ActiveRecord::Base
  belongs_to :rooms
  belongs_to :feature


end
