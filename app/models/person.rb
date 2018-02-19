class Person < ApplicationRecord

	attachment :image

	has_many :items

	validates :lastname,:firstname,:kana_lastname,:kana_firstname,:phone,:postal_code,:address,:address2,:area,
	presence: true
	validates :introduction,presence: true,length: {maximum:30}
	validates :introduction2, presence: true, length: {maximum:250}

	def view_lastname_and_firstname
		self.lastname + ' ' + self.firstname + ''
	end

end
