class Province < ApplicationRecord
  has_many :users
  validates :gst, presence: true
  validates :pst, presence: true
  validates :hst, presence: true
end
