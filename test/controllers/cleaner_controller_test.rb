require 'test_helper'

class CleanerControllerTest < ActionController::TestCase
  test "#new should allow GET" do
    get :new
    assert_response :success
  end

  test "#new should create a Cleaner object for the form" do
    get :new
    assert assigns(:cleaner)
    assert assigns(:cleaner).is_a?(Cleaner)
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
