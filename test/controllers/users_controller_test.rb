require 'test_helper'
require 'rails_helper'

class UsersControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    get user_index_url
    assert_response :success
  end

  test "should not save user without email" do
    user = User.new
    user.email = ""
    assert_not user.save
  end

  test "should not save user with invalid email" do
    user = User.new
    user.name = "xyz"
    user.email = "xyz.com"
    user.password = "password"
    assert_not user.save
  end

end
