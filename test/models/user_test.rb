# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  role            :string(25)       default("student")
#  campus_id       :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  #
  # test "First user's name is" do
  #   assert_equal "First User", users(:user_first).name
  # end

end
