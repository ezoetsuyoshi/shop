class RecordsController < ApplicationController

	def update
		record = Record.find(params[:id])
		record.update(record_params)
		redirect_to admin_user_show_path(record.user_id)
	end

	private
	def record_params
		params.require(:record).permit(:user_id,:item_id,:price,:count,:delivery_id,:active)
	end
end
