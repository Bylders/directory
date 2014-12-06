class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :name
      t.string :email
      t.text :address
      t.string :mobile
      t.string :landline

      t.timestamps
    end
  end
end
