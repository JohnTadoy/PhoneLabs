class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :image, presence: true
  validates :description, presence: true
end
