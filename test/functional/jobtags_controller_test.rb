require 'test_helper'

class JobtagsControllerTest < ActionController::TestCase
  setup do
    @jobtag = jobtags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobtags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobtag" do
    assert_difference('Jobtag.count') do
      post :create, jobtag: { title: @jobtag.title }
    end

    assert_redirected_to jobtag_path(assigns(:jobtag))
  end

  test "should show jobtag" do
    get :show, id: @jobtag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobtag
    assert_response :success
  end

  test "should update jobtag" do
    put :update, id: @jobtag, jobtag: { title: @jobtag.title }
    assert_redirected_to jobtag_path(assigns(:jobtag))
  end

  test "should destroy jobtag" do
    assert_difference('Jobtag.count', -1) do
      delete :destroy, id: @jobtag
    end

    assert_redirected_to jobtags_path
  end
end
