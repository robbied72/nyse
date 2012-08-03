require 'test_helper'

class FeatureSlidersControllerTest < ActionController::TestCase
  setup do
    @feature_slider = feature_sliders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feature_sliders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feature_slider" do
    assert_difference('FeatureSlider.count') do
      post :create, feature_slider: { active: @feature_slider.active, image: @feature_slider.image, title: @feature_slider.title }
    end

    assert_redirected_to feature_slider_path(assigns(:feature_slider))
  end

  test "should show feature_slider" do
    get :show, id: @feature_slider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feature_slider
    assert_response :success
  end

  test "should update feature_slider" do
    put :update, id: @feature_slider, feature_slider: { active: @feature_slider.active, image: @feature_slider.image, title: @feature_slider.title }
    assert_redirected_to feature_slider_path(assigns(:feature_slider))
  end

  test "should destroy feature_slider" do
    assert_difference('FeatureSlider.count', -1) do
      delete :destroy, id: @feature_slider
    end

    assert_redirected_to feature_sliders_path
  end
end
