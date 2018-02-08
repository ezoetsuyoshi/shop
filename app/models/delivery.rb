class Delivery < ApplicationRecord
	has_many :records

	accepts_nested_attributes_for :records
end
