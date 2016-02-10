class UsersController < ApplicationController

	def new 
	end 

	def create 
		@user = User.new(user_params)
		puts user_params
		puts "abcd"
		@user.save
		#flash[:success] = "User successfully created"
		redirect_to root_path
	end 

	def index
	@user = User.all 

	end 

	private 
	def user_params
			params.require(:user).permit(:email, :password)
      end
end
