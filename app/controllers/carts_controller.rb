class CartsController < ApplicationController

	def index
		@carts = Cart.all
		@categories = Category.all
		@fee = 540
		@total_price = 0
		@carts.each do |cart|
	      if current_user.id == cart.user_id
	         @total_price += cart.item.price*cart.count
	      end
    	end
	end

	def create
		@cart = Cart.new(cart_params)
		@cart.user_id = current_user.id
		if Cart.find_by(item_id: @cart.item_id,user_id:current_user.id)
       		redirect_to carts_path, flash: {n: "選んだ商品は既にカートに入っています"}
    	else
			@cart.save
			redirect_to carts_path
		end
	end

	def update
		@cart = Cart.find(params[:id])
		@cart.update(cart_params)
		redirect_to carts_path
	end

	def destroy
		@cart = Cart.find(params[:id])
		@cart.delete
		redirect_to carts_path
	end


	private

	def cart_params
		params.require(:cart).permit(:user_id,:item_id,:count)
	end


end
