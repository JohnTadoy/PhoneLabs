class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.decimal :price
      t.integer :quantity
      t.decimal :gst
      t.decimal :pst
      t.decimal :total

      t.timestamps
    end
  end
end
