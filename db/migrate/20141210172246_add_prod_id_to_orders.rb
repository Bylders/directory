class AddProdIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :prod_id, :string
  end
end
