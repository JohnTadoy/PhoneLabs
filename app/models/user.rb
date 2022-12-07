class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  validates :email, presence: true
  validates :password, presence: true
  validates :address, presence: true
  validates :province, presence: true
  validates :city, presence: true
  validates :postalcode, presence: true
  # validates :admin, presence: true
end
