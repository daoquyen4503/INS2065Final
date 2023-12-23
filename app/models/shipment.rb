class Shipment < ApplicationRecord
  belongs_to :supplier
  belongs_to :staff
  has_many :shipment_details
  has_many :books, though: :shipment_details
  validates_presence_of :received_at
  validates :receive_at_cannot_be_in_the_future
  def receive_at_cannot_be_in_the_future
    if receive_at.present? && receive_at > Date.today
      errors.add(:receive_at, "can't be in the future")
    end
  end
end
