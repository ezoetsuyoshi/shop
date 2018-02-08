class PeopleController < ApplicationController

	def new
		@person = Person.new
	end

	def create
		@person = Person.new(person_params)
		if @person.save
		   redirect_to people_path
		else
			render :new
		end
	end

	def index
		@people = Person.all
	end

	def show
		@items = Item.all
		@person = Person.find(params[:id])
	end

	def destroy
		@person = Person.find(params[:id])
		@person.destroy
		redirect_to people_path
	end

	def update
		@person = Person.find(params[:id])
		if @person.update(person_params)
		   redirect_to person_path(@person.id)
		else
			render :edit
		end
	end

	def edit
		@person = Person.find(params[:id])
	end

	def introduction
		@people = Person.all
	end


	private

	def person_params
		params.require(:person).permit(:name, :address, :phone, :image, :introduction)
	end
end
