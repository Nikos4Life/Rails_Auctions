class UsersController < ApplicationController
	
	def show
    	@user = User.find(params[:id])
    	rescue ActiveRecord::RecordNotFound
      	render "no_user_found"
  	end
  	def new
  		@user = User.new
  	end
  	def create
  		new_user = params[:user]
  		name = new_user[:name]
  		email = new_user[:email]
  		user = User.new(name: name, email: email)
  		user.save
  		redirect_to '/'
  	end
end
