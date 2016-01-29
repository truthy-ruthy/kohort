require 'test_helper'

class KohortControllerTest < ActionController::TestCase
  test "should get zip_code" do
    get :zip_code
    assert_response :success
  end

  test "should get age_id" do
    get :age_id
    assert_response :success
  end

  test "should get daytime_id" do
    get :daytime_id
    assert_response :success
  end

end
