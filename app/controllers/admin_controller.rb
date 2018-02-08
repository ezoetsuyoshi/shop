class AdminController < ApplicationController

	def item_show
		@item = Item.find(params[:id])
		@cart = Cart.new
	end

	def user_show
		@user = User.find(params[:id])
		@records = Record.where(user_id: @user.id).order("id desc")
	end
end
