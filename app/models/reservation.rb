# == Schema Information
#
# Table name: reservations
#
#  id          :integer          not null, primary key
#  start_at    :datetime
#  ends_at     :datetime
#  notes       :text
#  event_title :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  users_id    :integer
#  user_id     :integer
#

class Reservation < ActiveRecord::Base
  validates :starts_at, :ends_at, :user_id, :conference_room_id, :event_title, presence: true
  belongs_to :room
  belongs_to :user

end
