class CategoriesController < ApplicationController

	def show
		@items = if params[:search]
			Item.all.where("name LIKE?","%#{params[:search]}%")
			else
			Item.all
		end
		@category = Category.find(params[:id])
		@categories = Category.all
	end


	private

	def category_params
		params.require(:category).permit(:name)
	end
end
