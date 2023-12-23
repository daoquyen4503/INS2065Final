class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :staff
  has_many :order_items
  validates_presence_of :customer, :staff, :total_price, :status, inclusion: { in: ['pending', 'completed', 'canceled'] }
 
  order = Order.find(1)
  total_price = order.order_items.sum(:price)
end
