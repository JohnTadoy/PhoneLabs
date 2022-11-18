class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :price, presence: true
  validates :image, presence: true
  validates :description, presence: true
end
