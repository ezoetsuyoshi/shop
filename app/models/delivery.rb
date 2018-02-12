class Delivery < ApplicationRecord
	has_many :records

	accepts_nested_attributes_for :records

	validates :lastname,:firstname,:kana_lastname,:kana_firstname,:phone,:postal_code,:address,:address2,
	:presence true
end
