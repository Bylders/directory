class Menu < ActiveRecord::Base
	has_many :orders
def self.search(query)
		where("name like ?", "%#{query}%") 
	end
end
