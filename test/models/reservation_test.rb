# == Schema Information
#
# Table name: reservations
#
#  id          :integer          not null, primary key
#  starts_at   :datetime
#  ends_at     :datetime
#  notes       :text
#  event_title :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  users_id    :integer
#  user_id     :integer
#  room_id     :integer
#

require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
end
