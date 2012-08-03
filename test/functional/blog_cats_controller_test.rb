require 'test_helper'

class BlogCatsControllerTest < ActionController::TestCase
  setup do
    @blog_cat = blog_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_cat" do
    assert_difference('BlogCat.count') do
      post :create, blog_cat: { title: @blog_cat.title }
    end

    assert_redirected_to blog_cat_path(assigns(:blog_cat))
  end

  test "should show blog_cat" do
    get :show, id: @blog_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_cat
    assert_response :success
  end

  test "should update blog_cat" do
    put :update, id: @blog_cat, blog_cat: { title: @blog_cat.title }
    assert_redirected_to blog_cat_path(assigns(:blog_cat))
  end

  test "should destroy blog_cat" do
    assert_difference('BlogCat.count', -1) do
      delete :destroy, id: @blog_cat
    end

    assert_redirected_to blog_cats_path
  end
end
