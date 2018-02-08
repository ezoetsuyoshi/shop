class DeliveriesController < ApplicationController

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
			else
				redirect_to carts_path
			end
		end
		@carts.delete_all
		redirect_to mypage_path
	end

	private
	def delivery_params
		params.require(:delivery).permit(:name, :address, :phone, records_attributes:[:user_id,:item_id,:price,:count,:delivery_id])
	end
end
