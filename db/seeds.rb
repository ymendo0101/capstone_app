Service.create!(name: "Construction")
Service.create!(name: "Landscaping")
Service.create!(name: "Cleaning")
Service.create!(name: "Catering")
Service.create!(name: "Beauty")

User.create!(name: "Cecilia Benitez", phone_number: "773-996-5123", email: "cbenitez@email.com", password: "password", address: "Chicago", image_url: "http://66.media.tumblr.com/tumblr_m3tlpqPzkp1r812wlo1_500.png")
User.create!(name: "Yarisma Mendoza", phone_number: "773-996-5124", email: "ymendoza@email.com", password: "password", address: "Wisconsin", image_url: "https://cdn.imgbin.com/5/23/23/imgbin-jessica-jones-season-2-krysten-ritter-marvel-cinematic-universe-television-show-jessica-jones-KR7hYBcdy1rnFdjrQ2PdDCbah.jpg")
User.create!(name: "Ximena Cortez", phone_number: "773-996-5125", email: "xcortez@email.com", password: "password", address: "Indiana", image_url: "https://studybreaks.com/wp-content/uploads/2018/09/Brie-Larson-500x500.jpg")
User.create!(name: "Waldo Rivera", phone_number: "773-996-5126", email: "wrivera@email.com", password: "password", address: "Chicago", image_url: "https://data.whicdn.com/images/178152004/large.png")
User.create!(name: "Francisco Perez", phone_number: "773-996-5127", email: "fperez@email.com", password: "password", address: "Wisconsin", image_url: "https://www.irishtimes.com/polopoly_fs/1.3631782.1537184367!/image/image.jpg_gen/derivatives/box_620_330/image.jpg")

Professional.create!(service_id: 3, name: "Chris Pratt", phone_number: "773-996-5454", email: "cpratt@email.com", password: "password", address: "Chicago", license_number: "true", image_url: "https://www.menshairstylesx.com/wp-content/uploads/2018/08/chris-pratt-hairstyle.jpg")
Professional.create!(service_id: 2, name: "Tony Stark", phone_number: "773-996-5453", email: "tstark@email.com", password: "password", address: "Chicago", license_number: "true", image_url: "https://i.pinimg.com/736x/f0/b9/13/f0b91398789b0111b4a53efee8c98681.jpg")
Professional.create!(service_id: 5, name: "Peter Parker", phone_number: "773-996-5452", email: "pparker@email.com", password: "password", address: "Chicago", license_number: "true", image_url: "https://66.media.tumblr.com/d179c96f3d9ef3aa14360addf796ecb9/tumblr_inline_ox8amor1JO1s245c2_500.png")
Professional.create!(service_id: 4, name: "Bruce Willis", phone_number: "773-996-5451", email: "bwillis@email.com", password: "password", address: "Chicago", license_number: "true", image_url: "http://static6.bornrichimages.com/cdn2/500/500/91/c/wp-content/uploads/2015/09/bw_thumb.jpeg")
Professional.create!(service_id: 1, name: "Denzel Washington", phone_number: "773-996-5450", email: "dwashington@email.com", password: "password", address: "Chicago", license_number: "true", image_url: "http://relationships.femalefirst.co.uk/image-library/square/500/d/denzel-washington-wi1012-154542314.jpg")

AppointmentStatus.create!(status: "pending")
AppointmentStatus.create!(status: "confirmed")
AppointmentStatus.create!(status: "declined")

Appointment.create!(user_id: 1, service_id: 3, professional_id: 1, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 1, status: "pending")

Appointment.create!(user_id: 2, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 1, status: "pending")

Appointment.create!(user_id: 3, service_id: 5, professional_id: 3, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 1, status: "pending")

Appointment.create!(user_id: 4, service_id: 4, professional_id: 4, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 2, status: "pending")

Appointment.create!(user_id: 5, service_id: 1, professional_id: 5, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 1, status: "pending")

Appointment.create!(user_id: 1, service_id: 1, professional_id: 5, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 2, status: "pending")

Appointment.create!(user_id: 3, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 3, status: "pending")

Appointment.create!(user_id: 4, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 3, status: "pending")

Appointment.create!(user_id: 1, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 3, status: "pending")

Appointment.create!(user_id: 5, service_id: 2, professional_id: 2, start_datetime: 5.days.from_now, end_datetime: 5.days.from_now + 3.hours, appointment_status_id: 3, status: "pending")

# User.find_each do |user|
#   # Devise.warden... set password
#   user.password = "password"
#   user.password_confirmatinon = "password"
#   user.save
# end
