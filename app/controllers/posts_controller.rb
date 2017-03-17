class PostsController < ApplicationController
	before_action :authenticate_user!


	def index
		@posts = Post.all
		@response = Response.new
		#@responses = @post.responses
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id
		if @post.save
			redirect_to posts_path, notice: "Successfully created"
		else
			render action: "new"
		end
	end

	private

	def post_params
		params[:post].permit(:question,:user_id)
	end

end
