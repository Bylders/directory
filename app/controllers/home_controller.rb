class HomeController < ApplicationController
	def index
		t=0
		if params[:search]
			if current_user.customers.exists?(:mobile => params[:search])
				@customers = Customer.search(params[:search]).order("created_at DESC")
				t=1
			end
		end
		if t == 0
			@customers = current_user.customers
		end
	end
end