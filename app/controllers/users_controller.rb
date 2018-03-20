class UsersController < ApplicationController
  def show

  	@user = current_user

  end

  def update
  		
  		current_user.update(
  				avatar: params[:user][:avatar]
  			)

  		redirect_to action: 'show'

  end

end
