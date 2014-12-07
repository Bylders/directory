class Customer < ActiveRecord::Base
	belongs_to :user
	def self.search(query)
		where("mobile like ?", "%#{query}%") 
	end
end
