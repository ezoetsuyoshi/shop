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

	def admin_delete_user
		@user = User.find(params[:id])
		@user.soft_destroy
		redirect_to mypage_index_path
	end

	def admin_up_user
		@user = User.find(params[:id])
		@user.restore
		redirect_to mypage_index_path
	end

	def mypage_index
		@users = User.all
	end
end
