require 'test_helper'

class VacanciesControllerTest < ActionController::TestCase
  setup do
    @vacancy = vacancies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacancies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacancy" do
    assert_difference('Vacancy.count') do
      post :create, vacancy: { active: @vacancy.active, company_id: @vacancy.company_id, contact_email: @vacancy.contact_email, contact_name: @vacancy.contact_name, description: @vacancy.description, expiry_date: @vacancy.expiry_date, job_type_id: @vacancy.job_type_id, latitude: @vacancy.latitude, location: @vacancy.location, longitude: @vacancy.longitude, publish_date: @vacancy.publish_date, salary: @vacancy.salary, sector_id: @vacancy.sector_id, title: @vacancy.title, zipcode: @vacancy.zipcode }
    end

    assert_redirected_to vacancy_path(assigns(:vacancy))
  end

  test "should show vacancy" do
    get :show, id: @vacancy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacancy
    assert_response :success
  end

  test "should update vacancy" do
    put :update, id: @vacancy, vacancy: { active: @vacancy.active, company_id: @vacancy.company_id, contact_email: @vacancy.contact_email, contact_name: @vacancy.contact_name, description: @vacancy.description, expiry_date: @vacancy.expiry_date, job_type_id: @vacancy.job_type_id, latitude: @vacancy.latitude, location: @vacancy.location, longitude: @vacancy.longitude, publish_date: @vacancy.publish_date, salary: @vacancy.salary, sector_id: @vacancy.sector_id, title: @vacancy.title, zipcode: @vacancy.zipcode }
    assert_redirected_to vacancy_path(assigns(:vacancy))
  end

  test "should destroy vacancy" do
    assert_difference('Vacancy.count', -1) do
      delete :destroy, id: @vacancy
    end

    assert_redirected_to vacancies_path
  end
end
