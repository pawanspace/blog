class HomeController < ApplicationController

  def home
  	@currentTime = 1.hour.from_now
  end

end
