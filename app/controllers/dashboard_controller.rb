class DashboardController < ApplicationController
  def index
    

  end

  def closet
    @dresses = current_user.user_garments.my_garments('Dress')
    @tops = current_user.user_garments.my_garments('Top') 
  end

end
