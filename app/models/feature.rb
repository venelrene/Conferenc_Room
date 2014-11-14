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
  validates :name, presence: true
  has_many :rooms, :through => :conference_room_features



end
