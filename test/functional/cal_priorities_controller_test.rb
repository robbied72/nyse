require 'test_helper'

class CalPrioritiesControllerTest < ActionController::TestCase
  setup do
    @cal_priority = cal_priorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cal_priorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cal_priority" do
    assert_difference('CalPriority.count') do
      post :create, cal_priority: { name: @cal_priority.name }
    end

    assert_redirected_to cal_priority_path(assigns(:cal_priority))
  end

  test "should show cal_priority" do
    get :show, id: @cal_priority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cal_priority
    assert_response :success
  end

  test "should update cal_priority" do
    put :update, id: @cal_priority, cal_priority: { name: @cal_priority.name }
    assert_redirected_to cal_priority_path(assigns(:cal_priority))
  end

  test "should destroy cal_priority" do
    assert_difference('CalPriority.count', -1) do
      delete :destroy, id: @cal_priority
    end

    assert_redirected_to cal_priorities_path
  end
end
