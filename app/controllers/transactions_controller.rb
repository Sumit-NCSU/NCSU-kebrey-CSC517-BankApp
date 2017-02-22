class TransactionsController < ApplicationController
	def index
		@transactions = Transaction.all
	end
	
	def show
		@transaction = Transaction.find(params[:id])
	end
	
	def new
		@transaction = Transaction.new
	end

	def deposits
		@transaction = Transaction.deposit
	end

	def withdraws
		@transaction = Transaction.withdraw
	end
	
	def approve

  end
  def decline

  end
  def manage
    @transactions = Transaction.all_pending
  end

end
