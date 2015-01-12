# == Schema Information
#
# Table name: campuses
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  city           :string(255)
#  state          :string(255)
#  phone_number   :integer
#  zip_code       :integer
#  street_address :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  campus_id      :integer
#

class Campus < ActiveRecord::Base
  validates :name,  presence: true
  has_many :users
  has_many :rooms

  mount_uploader :roomphoto, RoomphotoUploader

end
