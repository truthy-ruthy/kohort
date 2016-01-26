require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get user_path
    assert_no_difference 'User.count' do
      post user_path, user: { name:  "",
                             email: "user@invalid",
                             password_digest:              "foo",
                             password_confirmation: "bar" }
  end
    assert_template 'kohort/my_kohorts'
  end
end
