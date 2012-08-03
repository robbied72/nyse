require 'test_helper'

class CurrentSalariesControllerTest < ActionController::TestCase
  setup do
    @current_salary = current_salaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:current_salaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create current_salary" do
    assert_difference('CurrentSalary.count') do
      post :create, current_salary: { title: @current_salary.title }
    end

    assert_redirected_to current_salary_path(assigns(:current_salary))
  end

  test "should show current_salary" do
    get :show, id: @current_salary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @current_salary
    assert_response :success
  end

  test "should update current_salary" do
    put :update, id: @current_salary, current_salary: { title: @current_salary.title }
    assert_redirected_to current_salary_path(assigns(:current_salary))
  end

  test "should destroy current_salary" do
    assert_difference('CurrentSalary.count', -1) do
      delete :destroy, id: @current_salary
    end

    assert_redirected_to current_salaries_path
  end
end
