class Delivery < ApplicationRecord
	has_many :records
	belongs_to :user


	validates :lastname,:firstname,:kana_lastname,:kana_firstname,:phone,:postal_code,:address,:address2,
	presence: true
end
