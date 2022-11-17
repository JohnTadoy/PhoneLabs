class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :phonenumber
      t.string :address
      t.string :postalcode

      t.timestamps
    end
  end
end
