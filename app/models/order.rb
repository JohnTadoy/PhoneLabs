class Order < ApplicationRecord
  validates :phonenumber, presence: true
  validates :address, presence: true
  validates :postalcode, presence: true
end
