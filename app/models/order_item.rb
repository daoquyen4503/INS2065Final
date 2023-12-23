class OrderItem < ApplicationRecord
  belongs_to :book
  belongs_to :order
  validates_presence_of :book, :order, :quantity, :price
  validates_numericality_of :quantity, greater_than: 0
end
