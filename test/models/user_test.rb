require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "validate presense of email" do
    user = User.new
    assert !user.valid?
    assert_equal "can't be blank", user.errors[:email][0] 
  end

  test "validate uniqueness of email" do
    old_user = users(:member1)
    new_user = User.new email: old_user.email
    assert !new_user.valid?
    assert_equal "has already been taken", new_user.errors[:email][0]
  end
end
