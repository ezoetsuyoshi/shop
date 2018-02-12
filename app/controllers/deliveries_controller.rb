class DeliveriesController < ApplicationController

	def new
		@delivery = Delivery.new
	end

	def create #購入ボタンを押した際のアクション。配送先・購入商品情報を保存し、カート内全削除し、アイテムのストックを減らす。
		@carts = Cart.where(user_id: current_user.id)
		@delivery = Delivery.create(delivery_params)
		@carts.each do |cart|
			if cart.item.stock >= cart.count
				cart.item.stock -= cart.count
				cart.item.save
				@record = Record.new(cart.attributes)
				@record.price = cart.item.price
				@record.count = cart.count
				@record.delivery_id = @delivery.id
				@record.save
				cart.delete
			else
				redirect_to carts_path, flash: {n:"在庫不足のため購入できませんでした"}
			end
		end
		redirect_to deliveries_path
	end

	def index
	end

	private
	def delivery_params
		params.require(:delivery).permit(:lastname,:firstname,:kana_lastname,:kana_firstname,:address,:address2,:postal_code, :phone, records_attributes:[:user_id,:item_id,:price,:count,:delivery_id,:active])
	end
end
