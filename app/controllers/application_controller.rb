class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  before_filter :authorize

  private
  
  def authorize


  end
end
