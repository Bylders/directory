class Customer < ActiveRecord::Base
	belongs_to :user
	has_many :orders
	def self.search(query)
		where("mobile like ?", "%#{query}%") 
	end
end
