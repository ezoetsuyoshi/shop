class Person < ApplicationRecord

	attachment :image

	has_many :items

	validates :lastname,:firstname,:kana_lastname,:kana_firstname,:phone,:postal_code,:address,:address2,:introduction,:introduction2,:area,
	presence: true

	def view_lastname_and_firstname
		self.lastname + ' ' + self.firstname + ''
	end

end
