class Search < ActiveRecord::Base
	def customers
		@customers ||= find_customers
	end
	private

	def find_customers
		# Customer.find(:all, :conditions => conditions)
		# Customer.where("name like ?", "%#{name}%")
		Customer.where(conditions)
	end

	def mobile_conditions
		["customers.mobile LIKE ?", "%#{mobile}%"] unless mobile.blank?
	end


	def conditions
		[conditions_clauses.join(' OR '), *conditions_options]
	end

	def conditions_clauses
		conditions_parts.map { |condition| condition.first }
	end

	def conditions_options
		conditions_parts.map { |condition| condition[1..-1] }.flatten
	end

	def conditions_parts
		private_methods(false).grep(/_conditions$/).map { |m| send(m) }.compact
	end
end
