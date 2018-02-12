class Item < ApplicationRecord

	attachment :image
	belongs_to :person
	has_many :categories
	has_many :carts, dependent: :destroy
	has_many :records

	validates :name, presence: true
	validates :price, presence: true
	validates :image, presence: true
	validates :description, presence: true
	validates :person_id,presence: true
	validates :category_id,presence: true
	validates :stock, presence: true
end
