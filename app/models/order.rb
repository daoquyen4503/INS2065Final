class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :staff
  has_many :order_items

  validates_presence_of :order_code, :customer, :staff, :total_price, :status
  validates_uniqueness_of :order_code

end
