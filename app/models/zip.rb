class Zip < ApplicationRecord
	has_many :doctors
	belongs_to :city
end
