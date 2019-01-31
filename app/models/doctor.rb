class Doctor < ApplicationRecord
	has_many :doctor_spec_lists
	has_many :appointments
	has_many :specialities, through: :doctor_spec_lists
	has_many :patients, through: :appointments
	belongs_to :zip
end
