class Professional < ApplicationRecord
  has_secure_password

  belongs_to :service
  has_many :appointments
  has_many :users, through: :appointments
end
