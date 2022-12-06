class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  has_one_attached :img
end
