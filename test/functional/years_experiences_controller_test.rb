require 'test_helper'

class YearsExperiencesControllerTest < ActionController::TestCase
  setup do
    @years_experience = years_experiences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:years_experiences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create years_experience" do
    assert_difference('YearsExperience.count') do
      post :create, years_experience: { title: @years_experience.title }
    end

    assert_redirected_to years_experience_path(assigns(:years_experience))
  end

  test "should show years_experience" do
    get :show, id: @years_experience
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @years_experience
    assert_response :success
  end

  test "should update years_experience" do
    put :update, id: @years_experience, years_experience: { title: @years_experience.title }
    assert_redirected_to years_experience_path(assigns(:years_experience))
  end

  test "should destroy years_experience" do
    assert_difference('YearsExperience.count', -1) do
      delete :destroy, id: @years_experience
    end

    assert_redirected_to years_experiences_path
  end
end
