class User < ApplicationRecord
  has_many :orders
  validates :email, presence: true
  validates :password, presence: true
  validates :admin, presence: true
end
