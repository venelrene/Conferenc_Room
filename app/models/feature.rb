# == Schema Information
#
# Table name: features
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class Feature < ActiveRecord::Base
  has_many :conference_room_features
  has_many :rooms, :through => :conference_room_features



end
