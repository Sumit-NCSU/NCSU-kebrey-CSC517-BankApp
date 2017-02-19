class UsersController < ApplicationController
  before_action :save_login_state, :only => [:new, :create]

	def index
		@users = User.all
	end
	
	def show
		@user = User.find(params[:id])
	end
	
	def new
		@user = User.new
	end
	
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = 'Login Successful'
			flash[:color] = 'valid'
		else
			flash[:notice] = 'Login Unsuccessful'
			flash[:color] = 'invalid'
		end
		render 'new'
	end

	def user_params
		params.require(:user).permit(:name, :email, :password)
	end
end
