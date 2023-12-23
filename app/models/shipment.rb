class Shipment < ApplicationRecord
  belongs_to :supplier
  belongs_to :staff
  has_many :shipment_details
  has_many :books, through: :shipment_details
  
  validates_presence_of :shipment_code, :supplier, :staff, :received_at
  validates_uniqueness_of :shipment_code

  validate :receive_at_cannot_be_in_the_future
  def receive_at_cannot_be_in_the_future
    if received_at.present? && received_at > Date.today
      errors.add(:received_at, "can't be in the future")
    end
  end
end
