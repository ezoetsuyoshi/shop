class Record < ApplicationRecord

	belongs_to :user
	belongs_to :item
	belongs_to :delivery

	enum active:{preparation: 0, shipment: 1}#発送準備中、発送しました
end
