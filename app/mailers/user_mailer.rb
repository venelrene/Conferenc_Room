class UserMailer < ActionMailer::Base
  default from: 'admin@conferenceroommanger.com'

  def welcome_email(user)
    @user = user
      if Rails.env.development?
        @url = 'http://localhost:3000/rooms'
      else
        @url = 'http://conferenceroom.dev/'
      end
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
