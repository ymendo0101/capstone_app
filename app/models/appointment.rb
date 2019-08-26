class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :professional
  belongs_to :service
end
