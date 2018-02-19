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

	def new
		@category = Category.new
		@categories = Category.all
	end

	def create
		@category = Category.new(category_params)
		@category.save
		redirect_to new_category_path
	end

	def update
		@category = Category.find(params[:id])
		@category.update(category_params)
		redirect_to new_category_path
	end

	def destroy
		@category = Category.find(params[:id])
		@category.delete
		redirect_to new_category_path
	end


	private

	def category_params
		params.require(:category).permit(:name)
	end
end
