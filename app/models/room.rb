# == Schema Information
#
# Table name: rooms
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  location      :string(255)
#  photo         :string(255)
#  description   :text
#  squarefootage :integer
#  lastused      :date
#  created_at    :datetime
#  updated_at    :datetime
#  roomphoto     :string(255)
#  user_id       :integer
#

class Room < ActiveRecord::Base
  validates :name, :location, presence: true
  attr_accessor :roomphoto, :roomphoto_cache, :remote_image_url
  mount_uploader :roomphoto, RoomphotoUploader

end
