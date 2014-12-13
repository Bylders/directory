class AddOrderIdToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :order_id, :integer
  end
end
