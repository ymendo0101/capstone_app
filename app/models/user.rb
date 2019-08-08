class User < ApplicationRecord
  has_many :appointments
  has_many :professionals, through: :appointments
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
