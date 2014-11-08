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

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
