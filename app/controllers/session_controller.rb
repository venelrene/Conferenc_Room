class SessionController < ApplicationController


  skip_before_action :authenticate, only: [:welcome, :signin, :signup, :signup_entry]

  def welcome

  end

  def signup_entry
    user = User.new(name: params[:name],
                    email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      flash[:notice] = 'You have successfully signed up'
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
    flash[:warning] = "You have signed out!"
     redirect_to root_path
  end


end
