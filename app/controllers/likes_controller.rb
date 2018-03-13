class LikesController < ApplicationController
  def create
  	@tl = Like.where(parent_id: params[:like][:parent_id] , parent_type: params[:like][:parent_type]).length
  	if Like.exists?(parent_id: params[:like][:parent_id] , parent_type: params[:like][:parent_type] , user_id: current_user.id)

  		a = Like.where(parent_id: params[:like][:parent_id] , parent_type: params[:like][:parent_type] , user_id: current_user.id)
  		@tl = @tl - 1
  		@like = a[0]
  		@like.value = false
  		a[0].destroy
  	else 
  		@like =  Like.create(
  			parent_id: params[:like][:parent_id] ,
  			parent_type: params[:like][:parent_type] ,
  			user_id: current_user.id , 
  			value: true
  		)
  		@tl = @tl+1
  	end
  	



  end
end
