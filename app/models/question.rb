class Question < ApplicationRecord
	validates :name, presence: true
	validates :mail, presence: true
	validates :content, presence: true
	validates :phone, presence: true
end
