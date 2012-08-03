class DashboardController < ApplicationController

  before_filter :authenticate_company_admin!
  before_filter :find_company

  def find_company
    @company = Company.joins(:company).where(:current_company_admin => { :id => "1" })
  end

  def check_if_authorized
    render :status => 404 and return unless current_company_admin.company_id == @companay.id
  end

  def index
    @mycompany = Company.joins(:company).where(:current_company_admin => { :id => "1" }) 
    @vacancies = Vacancy.where(:company_id => current_company_admin.company_id)
    @tasks = Task.where(:company_admin_id => current_company_admin.id, :complete => false).order('due asc')
    @eventtoday = Event.where(:company_admin_id => current_company_admin.id, :start_time => Date.today).order('start_time asc')
    @eventtomorrow = Event.where(:company_admin_id => current_company_admin.id, :start_time => Date.tomorrow).order('start_time asc')

  end

end
