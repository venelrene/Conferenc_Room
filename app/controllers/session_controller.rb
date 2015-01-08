class SessionController < ApplicationController


  skip_before_action :authenticate, only: [:welcome, :signin, :signup, :signup_entry]

  def welcome

  end

  def signup_entry
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      flash[:notice] = 'You have successfully signed up'
      UserMailer.welcome_email(user).deliver
    else
      flash[:error] = "We are unable to sign you up. #{user.errors.full_messages.join('. ')}."
    end

    redirect_to root_path
  end

  def signup

  end

  def signin
    user = User.find_by(email: params[:email]).try(:authenticate, params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = 'You have signed in!'
    else
      session[:user_id] = nil
      flash[:error] = 'Unable to login with these credentials'
    end
     redirect_to root_path
  end

  def signout
    session[:user_id] = nil
    flash[:warning] = 'You have signed out!'
     redirect_to root_path
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params[:user].permit(:campus_id, :password, :password_confirmation, :email, :name)
  end

end
