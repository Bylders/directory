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

	def name_conditions
		["customers.name LIKE ?", "%#{name}%"] unless name.blank?
	end

	def email_conditions
		["customers.email LIKE ?", "%#{email}%"] unless email.blank?
	end

	def address_conditions
		["customers.address LIKE ?", "%#{address}%"] unless address.blank?
	end

	def mobile_conditions
		["customers.mobile LIKE ?", "%#{mobile}%"] unless mobile.blank?
	end

	def landline_conditions
		["customers.landline LIKE ?", "%#{landline}%"] unless landline.blank?
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
