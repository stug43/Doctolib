class Speciality < ApplicationRecord
	has_many :doctor_spec_lists
	has_many :doctors, through: :doctor_spec_lists
end
