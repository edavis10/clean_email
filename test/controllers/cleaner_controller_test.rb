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

  test "#create should allow POST" do
    post :create
    assert_response :success
  end

  test "#create should create a Cleaner object" do
    post :create
    assert assigns(:cleaner)
    assert assigns(:cleaner).is_a?(Cleaner)
  end

  test "#create should populate the Cleaner's content" do
    post :create, cleaner: {content: "Test"}

    assert assigns(:cleaner)
    assert_equal "Test", assigns(:cleaner).content
  end
end
