require 'test_helper'

class KohortControllerTest < ActionController::TestCase
  test "should get join" do
    get :join
    assert_response :success
  end

  test "should get leave" do
    get :leave
    assert_response :success
  end

  test "should get kohort" do
    get :kohort
    assert_response :success
  end

end
