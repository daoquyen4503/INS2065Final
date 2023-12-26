class Book < ApplicationRecord
  belongs_to :category
  has_many :order_items
  validates_presence_of :title, :author, :category, :price
  validates_uniqueness_of :title
  validates_numericality_of :price

  has_one_attached :cover_image
end
  