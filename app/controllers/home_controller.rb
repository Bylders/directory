class HomeController < ApplicationController
	def index
		if params[:search]
			if Customer.search(params[:search]).include? current_user.customers
				@customers = Customer.search(params[:search]).order("created_at DESC")
			end
			else
				@customers = current_user.customers
		end
	end
end