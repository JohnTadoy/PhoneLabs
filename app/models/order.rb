class Order < ApplicationRecord
  belongs_to :user
  validates :phonenumber, presence: true
  validates :address, presence: true
  validates :postalcode, presence: true
end
