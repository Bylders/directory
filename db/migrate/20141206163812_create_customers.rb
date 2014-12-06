class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :mobile
      t.string :landline

      t.timestamps
    end
  end
end
