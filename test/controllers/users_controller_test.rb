require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @admin = users(:one)
    @user = users(:two)
  end

  test 'should get new user path' do
    get new_user_path
    assert_response :success
  end

  test 'should show user' do
    get user_path(@user)
    assert_response :success
  end

  test 'should destroy user' do
    user = users(:one)
    assert_difference('User.count', -1) do
      delete user_path(user)
    end

    assert_redirected_to admins_path
  end

  test "should get edit" do
    user = users(:one)
    get edit_user_path(user)
    assert_response :success
  end
end
