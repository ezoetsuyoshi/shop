class ItemsController < ApplicationController

	def new
		@item = Item.new
	end

	def index
		@categories = Category.all
		@items = if params[:search]
     	#searchされた場合は、原文+.where('name LIKE ?', "%#{params[:search]}%")を実行
     			Item.all.where('name LIKE ?', "%#{params[:search]}%")
    			else
      	#searchされていない場合は、原文そのまま
      			Item.all.page(params[:page]).reverse_order
    			end
	end

	def create
		@item = Item.new(item_params)
		if @item.save
		   redirect_to items_path
		else
			render :new
		end
	end

	def show
		@item = Item.find(params[:id])
		@cart = Cart.new
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to items_path
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		if @item.update(item_params)
		   redirect_to item_path(@item.id)
		else
			render :edit
		end
	end

	def mypage
		@user = User.find(current_user.id)
		@records = Record.where(user_id: current_user.id).order("id desc")
	end

	def mypage_index
		@users = User.all
	end


	private

	def item_params
		params.require(:item).permit(:name, :price, :image, :category, :description, :person_id, :category_id, :stock)
	end

end
