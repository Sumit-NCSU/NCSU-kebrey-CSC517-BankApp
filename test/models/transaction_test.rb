require 'test_helper'

class TransactionTest < ActiveSupport::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test 'transaction should be valid' do
    assert @transaction.valid?
  end

  test 'transaction type should be valid' do
    @transaction.txn_type = 'random'
    assert_not @transaction.valid?
  end

  test 'transaction status should be valid' do
    @transaction.status = 'random'
    assert_not @transaction.valid?
  end

end
