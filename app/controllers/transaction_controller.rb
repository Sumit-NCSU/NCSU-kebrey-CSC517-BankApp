class TransactionController < ApplicationController
  def approve

  end
  def decline

  end
  def manage
    @transactions = Transaction.all_pending
  end
end
