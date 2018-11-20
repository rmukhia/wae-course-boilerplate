require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers 

  test "should be able to log in" do
    sign_in users(:member1)
    get '/'
    assert_response :success
  end

  test "should be able to sign up" do
    post '/users', params: { user:
                                      {
                                        email: 'st120049@ait.ac.th',
                                        password: '123456',
                                        password_confirmation: '123456',
                                        role: 'member' 
                                      }
    }
    assert_redirected_to root_path
  end
end
