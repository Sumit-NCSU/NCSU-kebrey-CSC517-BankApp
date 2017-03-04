require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transaction = transactions(:one)
  end

  test 'should show transaction' do
    get user_path(@transaction)
    assert_response :success
  end

end
