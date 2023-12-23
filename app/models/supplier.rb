class Supplier < ApplicationRecord
    has_many :books, though: :shipments
    has_many :shipments
    validates_presence_of :name, :address, :emails, :hotline
    validates_numericality_of :hotline
end
