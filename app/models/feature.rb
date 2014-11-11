# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#

class Feature < ActiveRecord::Base
  has_many :rooms, :through => :conference_room_features



end
