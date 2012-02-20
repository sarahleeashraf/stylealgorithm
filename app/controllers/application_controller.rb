class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :authorize

  private
  
  def authorize
    unless current_user 
      redirect_to login_url, notice: "Please log in"
    end
  end
end
