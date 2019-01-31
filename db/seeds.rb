Doctor.destroy_all
DoctorSpecList.destroy_all
Speciality.destroy_all
Zip.destroy_all
City.destroy_all
Appointment.destroy_all
Patient.destroy_all

10.times do |index|
	city = City.create!(name: Faker::Nation.capital_city)
end

15.times do |index|
	zip = Zip.create!(zip_code: Faker::Number.number(7).to_s, city: City.all.sample)
end

7.times do |index|
	doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip: Zip.all.sample)
end

5.times do |index|
	speciality = Speciality.create!(name: Faker::Hacker.ingverb)
end

10.times do |index|
	doctor_spec = DoctorSpecList.create!(doctor: Doctor.all.sample, speciality: Speciality.all.sample)
end

25.times do |index|
	patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

15.times do |index|
	appointment = Appointment.create!(date: Faker::Date.between(1.year.ago, Date.today), doctor: Doctor.all.sample, patient: Patient.all.sample)
end
