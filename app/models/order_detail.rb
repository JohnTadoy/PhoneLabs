class OrderDetail < ApplicationRecord
  validates :price, presence: true
  validates :quantity, presence: true
  validates :gst, presence: true
  validates :pst, presence: true
  validates :total, presence: true
end
