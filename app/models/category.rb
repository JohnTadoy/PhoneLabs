class Category < ApplicationRecord
  has_many :products
  validates :apple, presence: true
  validates :samsung, presence: true
  validates :nokia, presence: true
  validates :redmi, presence: true
  validates :realmi, presence: true
  validates :oppo, presence: true
end
