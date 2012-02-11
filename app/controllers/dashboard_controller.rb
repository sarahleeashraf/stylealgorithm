class DashboardController < ApplicationController
  def index
    

  end

  def closet
    @dresses = Dress.all
    @tops = Top.all

  end

end
