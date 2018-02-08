class Person < ApplicationRecord

	attachment :image

	has_many :items

	validates :name, presence: true
	validates :address, presence: true
	validates :phone, presence: true
	validates :introduction, presence: true
	validates :image, presence: true
end
