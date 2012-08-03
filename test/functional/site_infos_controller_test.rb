require 'test_helper'

class SiteInfosControllerTest < ActionController::TestCase
  setup do
    @site_info = site_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_info" do
    assert_difference('SiteInfo.count') do
      post :create, site_info: { address_line_1: @site_info.address_line_1, address_line_2: @site_info.address_line_2, city: @site_info.city, email: @site_info.email, google_map_api: @site_info.google_map_api, meta_description: @site_info.meta_description, meta_keywords: @site_info.meta_keywords, name: @site_info.name, state: @site_info.state, telephone: @site_info.telephone, url: @site_info.url, zip: @site_info.zip }
    end

    assert_redirected_to site_info_path(assigns(:site_info))
  end

  test "should show site_info" do
    get :show, id: @site_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_info
    assert_response :success
  end

  test "should update site_info" do
    put :update, id: @site_info, site_info: { address_line_1: @site_info.address_line_1, address_line_2: @site_info.address_line_2, city: @site_info.city, email: @site_info.email, google_map_api: @site_info.google_map_api, meta_description: @site_info.meta_description, meta_keywords: @site_info.meta_keywords, name: @site_info.name, state: @site_info.state, telephone: @site_info.telephone, url: @site_info.url, zip: @site_info.zip }
    assert_redirected_to site_info_path(assigns(:site_info))
  end

  test "should destroy site_info" do
    assert_difference('SiteInfo.count', -1) do
      delete :destroy, id: @site_info
    end

    assert_redirected_to site_infos_path
  end
end
