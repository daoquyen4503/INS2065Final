class ShipmentDetail < ApplicationRecord
  belongs_to :shipment
  belongs_to :book
  validates_presence_of :shipment, :book, :quantity
  validates_numericality_of :quantity, greater_than: 0

end
