Service.create!(name: "Construction")
Service.create!(name: "Landscaping")
Service.create!(name: "Cleaning")
Service.create!(name: "Catering")
Service.create!(name: "Beauty")

User.create!(name: "Cecilia Benitez", phone_number: "773-996-5123", email: "cbenitez@email.com", password: "password", address: "Chicago")
User.create!(name: "Yarisma Mendoza", phone_number: "773-996-5124", email: "ymendoza@email.com", password: "password", address: "Wisconsin")
User.create!(name: "Ximena Cortez", phone_number: "773-996-5125", email: "xcortez@email.com", password: "password", address: "Indiana")
User.create!(name: "Waldo Rivera", phone_number: "773-996-5126", email: "wrivera@email.com", password: "password", address: "Chicago")
User.create!(name: "Francisco Perez", phone_number: "773-996-5127", email: "fperez@email.com", password: "password", address: "Wisconsin")

Professional.create!(service_id: 3, name: "Chris Pratt", phone_number: "773-996-5454", email: "cpratt@email.com", password: "password", address: "Chicago", license_number: "true")
Professional.create!(service_id: 2, name: "Tony Stark", phone_number: "773-996-5453", email: "tstark@email.com", password: "password", address: "Chicago", license_number: "true")
Professional.create!(service_id: 5, name: "Peter Parker", phone_number: "773-996-5452", email: "pparker@email.com", password: "password", address: "Chicago", license_number: "true")
Professional.create!(service_id: 4, name: "Bruce Willis", phone_number: "773-996-5451", email: "bwillis@email.com", password: "password", address: "Chicago", license_number: "true")
Professional.create!(service_id: 1, name: "Denzel Washington", phone_number: "773-996-5450", email: "dwashington@email.com", password: "password", address: "Chicago", license_number: "true")

AppointmentStatus.create!(status: "pending")
AppointmentStatus.create!(status: "confirmed")
AppointmentStatus.create!(status: "declined")

Appointment.create!(user_id: 1, service_id: 3, professional_id: 1, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 1)

Appointment.create!(user_id: 2, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 1)

Appointment.create!(user_id: 3, service_id: 5, professional_id: 3, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 1)

Appointment.create!(user_id: 4, service_id: 4, professional_id: 4, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 2)

Appointment.create!(user_id: 5, service_id: 1, professional_id: 5, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 2)

Appointment.create!(user_id: 1, service_id: 1, professional_id: 5, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 2)

Appointment.create!(user_id: 3, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 3)

Appointment.create!(user_id: 4, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 3)

Appointment.create!(user_id: 1, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 3)

Appointment.create!(user_id: 5, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 3)

# User.find_each do |user|
#   # Devise.warden... set password
#   user.password = "password"
#   user.password_confirmatinon = "password"
#   user.save
# end
