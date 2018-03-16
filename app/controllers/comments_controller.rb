class  CommentsController < ApplicationController


	def create
		if (params[:comment][:parent_type] == 'Post')
			@parent = Post.find(params[:comment][:parent_id])
		else
			@parent = Comment.find(params[:comment][:parent_id])
		end

		@comment = Comment.create(
				content: params[:comment][:content],
				user_id: current_user.id,
				parent: @parent
				# or you can do
				# user: current_user
			)
		@like = Like.new
	end

	def edit
		@comment = Comment.find(params[:id])
		
	end

	def update
		# buybug
		@comment = Comment.find(params[:id])	
		@comment.update(
			content: params[:comment][:content],
			)	

	end


	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
	end

end
