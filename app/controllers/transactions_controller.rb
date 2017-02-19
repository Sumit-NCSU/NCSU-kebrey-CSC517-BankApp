class TransactionsController < ApplicationController
	def index
		@transactions = Transaction.all
	end
	
	def show
		@transaction = Transaction.find(params[:id])
	end
	
	def new
	end

	def deposits

	end

	def withdraws

	end

end
