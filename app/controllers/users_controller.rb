class UsersController < ApplicationController
  
	def show
		@users = User.find(params[:id])
	end
  
	def new
		@users = User.new
	end
  
	def create
		@users = User.new(params[:user])
		if @users.save
			sign_in @users
			flash[:success] = "Welcome to Molou Computing Solutions!"
			redirect_to @users
		else
			render 'new'
		end
	end
end
