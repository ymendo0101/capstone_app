Service.create!(name: "Construction")
Service.create!(name: "Landscaping")
Service.create!(name: "Cleaning")
Service.create!(name: "Catering")
Service.create!(name: "Beauty")

Professional.create!(service_id: 3, name: "Chris Pratt", email: "cpratt@email.com", password: "password", location: "Chicago", price: 100.21, license: "true")
Professional.create!(service_id: 2, name: "Tony Stark", email: "tstark@email.com", password: "password", location: "Chicago", price: 50.00, license: "true")
Professional.create!(service_id: 5, name: "Peter Parker", email: "pparker@email.com", password: "password", location: "Chicago", price: 200.00, license: "true")
Professional.create!(service_id: 4, name: "Bruce Willis", email: "bwillis@email.com", password: "password", location: "Chicago", price: 1500.00, license: "true")
Professional.create!(service_id: 1, name: "Denzel Washington", email: "dwashington@email.com", password: "password", location: "Chicago", price: 10000.0, license: "true")

User.create!(name: "Cecilia Benitez", email: "cbenitez@email.com", password: "password", service: "Construction", date: "11/23/2019", location: "Chicago", professional: "Denzel Washington")
User.create!(name: "Cecilia Benitez", email: "cbenitez@email.com", password: "password", service: "Construction", date: "11/23/2019", location: "Chicago", professional: "Denzel Washington")
User.create!(name: "Cecilia Benitez", email: "cbenitez@email.com", password: "password", service: "Construction", date: "11/23/2019", location: "Chicago", professional: "Denzel Washington")
User.create!(name: "Cecilia Benitez", email: "cbenitez@email.com", password: "password", service: "Construction", date: "11/23/2019", location: "Chicago", professional: "Denzel Washington")
User.create!(name: "Cecilia Benitez", email: "cbenitez@email.com", password: "password", service: "Construction", date: "11/23/2019", location: "Chicago", professional: "Denzel Washington")

Appointment.create!(professional_id: 3, user_id: 1, accepted: "FALSE")
Appointment.create!(professional_id: 3, user_id: 1, accepted: "FALSE")
Appointment.create!(professional_id: 3, user_id: 1, accepted: "FALSE")
Appointment.create!(professional_id: 3, user_id: 1, accepted: "FALSE")
Appointment.create!(professional_id: 3, user_id: 1, accepted: "FALSE")
