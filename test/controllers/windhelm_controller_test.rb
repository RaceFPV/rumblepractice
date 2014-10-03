require 'test_helper'

class WindhelmControllerTest < ActionController::TestCase
  test "should get center" do
    get :center
    assert_response :success
  end

  test "should get cne" do
    get :cne
    assert_response :success
  end

  test "should get cn" do
    get :cn
    assert_response :success
  end

  test "should get cs" do
    get :cs
    assert_response :success
  end

  test "should get cw" do
    get :cw
    assert_response :success
  end

  test "should get ce" do
    get :ce
    assert_response :success
  end

  test "should get cnw" do
    get :cnw
    assert_response :success
  end

  test "should get csw" do
    get :csw
    assert_response :success
  end

  test "should get cse" do
    get :cse
    assert_response :success
  end

end
