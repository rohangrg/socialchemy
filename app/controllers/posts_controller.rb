class  PostsController < ApplicationController

	def index

		@post = Post.new
		@p = Post.all
		@comment = Comment.new
	    @like = Like.new
		# @posts = Post.all


	end

	def create
		@post = Post.create(
				content: params[:post][:content],
				user_id: current_user.id
				# or you can do
				# user: current_user
			)

		@comment = Comment.new
		@like = Like.new

	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		
		@post = Post.find(params[:id])
		@post.update(
			content: params[:post][:content],
			)
		
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
	end	

end
