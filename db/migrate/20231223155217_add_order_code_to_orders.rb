class AddOrderCodeToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :order_code, :string
  end
end
