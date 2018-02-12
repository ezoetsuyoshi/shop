class Question < ApplicationRecord
	validates :lastname,:firstname,:kana_lastname,:kana_firstname,:mail,:phone,:content,presence: true,length: {maximum:1000}
end
