class SessionsController < ApplicationController
  skip_before_filter :authorize

  def create
    user = User.find_by_email(params[:email])

    if user and user.authenticate(params[:password])
      sign_in user
	  p root_url
      redirect_to root_url
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
