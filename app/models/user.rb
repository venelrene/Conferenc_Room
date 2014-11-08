# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  role       :string(255)
#

class User < ActiveRecord::Base
  belongs_to :room

  has_secure_password

  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: {with: VALID_EMAIL_REGEX },

  validates :password, length: { minimum: 6}

  def admin?
    self.role == 'admin'
  end


end
