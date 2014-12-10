class AddHasManyToUsers < ActiveRecord::Migration
	def change
		add_column :customers, :user_id, :integer
		add_index 'customers', ['user_id'], :name => 'index_user_id' 
	end
end
