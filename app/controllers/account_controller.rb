class AccountController < ApplicationController
	def show
		@account = Account.all
	end
end
