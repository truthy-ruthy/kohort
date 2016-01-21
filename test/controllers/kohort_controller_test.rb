require 'test_helper'

class KohortControllerTest < ActionController::TestCase
  test "should get join_kohort" do
    get :join_kohort
    assert_response :success
  end

  test "should get leave_kohort" do
    get :leave_kohort
    assert_response :success
  end

  test "should get kohort_home" do
    get :kohort_home
    assert_response :success
  end

end
