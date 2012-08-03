require 'test_helper'

class NewsSignupsControllerTest < ActionController::TestCase
  setup do
    @news_signup = news_signups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_signups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_signup" do
    assert_difference('NewsSignup.count') do
      post :create, news_signup: { email: @news_signup.email, name: @news_signup.name }
    end

    assert_redirected_to news_signup_path(assigns(:news_signup))
  end

  test "should show news_signup" do
    get :show, id: @news_signup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_signup
    assert_response :success
  end

  test "should update news_signup" do
    put :update, id: @news_signup, news_signup: { email: @news_signup.email, name: @news_signup.name }
    assert_redirected_to news_signup_path(assigns(:news_signup))
  end

  test "should destroy news_signup" do
    assert_difference('NewsSignup.count', -1) do
      delete :destroy, id: @news_signup
    end

    assert_redirected_to news_signups_path
  end
end
