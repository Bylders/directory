class HomeController < ApplicationController
  def index
  	@customers = current_user.customers
  end
end
