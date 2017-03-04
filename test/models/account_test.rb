require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
    @account = accounts(:one)
  end

  test 'account should be valid' do
    assert @account.valid?
  end

  test 'account status should be valid' do
    @account.status = 'random'
    assert_not @account.valid?
  end

  test 'balance should not be negative' do
    @account.balance = -31
    assert_not @account.valid?
  end

end
