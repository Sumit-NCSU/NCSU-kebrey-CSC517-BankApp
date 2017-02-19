class AccountsController < ApplicationController
<<<<<<< HEAD
	def index
		@accounts = Account.all
	end
	
	def show
		@account = Account.find(params[:id])
	end
	
	def new
	end
=======

	def account_params
		params.require(:account).permit(:account_number, :status, :balance)
	end

	def index
		@accounts = Account.all
	end

	def show
		@account = Account.find(params[:id])
	end

	def new
		@account = Account.new
	end

	def edit
		@account = Account.find(params[:id])
	end

	def create
		@account = Account.new(account_params)
		if @account.save
			redirect_to @account, notice: 'Account was successfully created'
		else
			render action:'new'
		end
	end

	def update
		@account = Account.find(params[:id])
		if @account.update_attributes(account_params)
			redirect_to @account, notice: 'Account was successfully updated.'
		else
			render action:'edit'
		end
	end

	def destroy
		@account = Account.find(params[:id])
		if @account.destroy
			redirect_to @account, notice: 'Account was successfully deleted.'
		else
			render action:'show'
		end
	end

>>>>>>> ec6af02ef9eb1c857073813e97bee937977ef9a2
end
