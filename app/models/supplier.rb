class Supplier < ApplicationRecord
    has_many :books, through: :shipments
    has_many :shipments
    validates_presence_of :name, :address, :email, :hotline
    validates_numericality_of :hotline
end
