class UsersController < ApplicationController
  
	def show
		@users = User.find(params[:id])
	end
  
	def new
		@users = User.new
	end
  
	def create
		@users = User.new(params[:users])
		if @users.save
			flash[:success] = "Welcome to Molou Computing Solutions!"
			redirect_to @users
		else
			render 'new'
		end
	end
end
