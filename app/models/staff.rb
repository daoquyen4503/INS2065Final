class Staff < ApplicationRecord
    has_many :orders
    has_many :shipments
    validates_presence_of :name, :gender, :date_of_birth, :citizen_Id, :phone_number, :address
    validates_uniqueness_of :citizen_Id
    validates_numericality_of :citizen_Id, :phone_number
    validates :date_of_birth_cannot_be_in_the_future
    def date_of_birth_cannot_be_in_the_future
        if date_of_birth.present? && birthdate > Date.today
          errors.add(:date_of_birth, "must not be in the future")
        end
    end
end
