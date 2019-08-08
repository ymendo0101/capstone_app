class Professional < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  belongs_to :service
  has_many :appointments
  has_many :users, through: :appointments
end
