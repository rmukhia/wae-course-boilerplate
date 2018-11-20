require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers 

  test "should be able to log in to admin dashboard" do
    sign_in users(:admin)
    get '/admin'
    assert_response :success
  end

  test "should not be able to log in to admin dashboard" do
    assert_raises ('CanCan::AccessDenied') do
      get '/admin'
    end
    sign_in users(:member1)
    assert_raises ('CanCan::AccessDenied') do
      get '/admin'
    end
  end
end
