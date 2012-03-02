class DashboardController < ApplicationController
  def index
 
  end

  def closet
    @dresses = current_user.garments.find_all_by_type("Dress") 
    @tops = current_user.garments.find_all_by_type("Top")
    @tees = current_user.garments.find_all_by_type("Tee") 

  end

end
