class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    puts "hello world!"

    if user and user.authenticate(params[:password])
      sign_in user
      p current_user
      redirect_to dashboard_url
    else
      redirect_to login_url, alert: "We do not have a record of that email or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url
    sign_out current_user
  end

end
