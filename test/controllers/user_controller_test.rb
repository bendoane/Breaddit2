require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get username:string" do
    get :username:string
    assert_response :success
  end

  test "should get email:string" do
    get :email:string
    assert_response :success
  end

  test "should get crypted_password:string" do
    get :crypted_password:string
    assert_response :success
  end

  test "should get password_salt:string" do
    get :password_salt:string
    assert_response :success
  end

  test "should get persistence_token:string" do
    get :persistence_token:string
    assert_response :success
  end

end
