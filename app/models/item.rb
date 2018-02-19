class Item < ApplicationRecord

	attachment :image
	belongs_to :person
	belongs_to :category
	has_many :carts, dependent: :destroy
	has_many :records

	validates :name, presence: true
	validates :price, presence: true
	validates :image, presence: true
	validates :description, presence: true,length:{maximum:200}
	validates :person_id,presence: true
	validates :category_id,presence: true
	validates :stock,:yomi_name, presence: true
end
