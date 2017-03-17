class ResponsesController < ApplicationController

	def new
		@response = Response.new
	end

	def create
		@response = Response.new(response_params)
		@response.user_id = current_user.id
		if @response.save
			redirect_to posts_path(@response.post_id), notice: "Successfully created"
		else
			render action: "new"
		end
	end

	private

	def response_params
		params[:response].permit(:answer, :post_id, :user_id)
	end
end
