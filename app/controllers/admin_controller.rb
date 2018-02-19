class AdminController < ApplicationController

	def item_show
		@item = Item.find(params[:id])
		@cart = Cart.new
	end

	def user_show
		@user = User.find(params[:id])
		@deliveries = Delivery.where(user_id: @user.id).order("id desc")
		@records = Record.all
		@fee = 540
	end

	def mypage_index
		@users = User.all
	end
end
