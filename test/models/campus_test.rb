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

require 'test_helper'

class CampusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
