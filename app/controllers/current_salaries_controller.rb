class CurrentSalariesController < ApplicationController
  # GET /current_salaries
  # GET /current_salaries.json
  def index
    @current_salaries = CurrentSalary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @current_salaries }
    end
  end

  # GET /current_salaries/1
  # GET /current_salaries/1.json
  def show
    @current_salary = CurrentSalary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @current_salary }
    end
  end

  # GET /current_salaries/new
  # GET /current_salaries/new.json
  def new
    @current_salary = CurrentSalary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @current_salary }
    end
  end

  # GET /current_salaries/1/edit
  def edit
    @current_salary = CurrentSalary.find(params[:id])
  end

  # POST /current_salaries
  # POST /current_salaries.json
  def create
    @current_salary = CurrentSalary.new(params[:current_salary])

    respond_to do |format|
      if @current_salary.save
        format.html { redirect_to @current_salary, notice: 'Current salary was successfully created.' }
        format.json { render json: @current_salary, status: :created, location: @current_salary }
      else
        format.html { render action: "new" }
        format.json { render json: @current_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /current_salaries/1
  # PUT /current_salaries/1.json
  def update
    @current_salary = CurrentSalary.find(params[:id])

    respond_to do |format|
      if @current_salary.update_attributes(params[:current_salary])
        format.html { redirect_to @current_salary, notice: 'Current salary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @current_salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_salaries/1
  # DELETE /current_salaries/1.json
  def destroy
    @current_salary = CurrentSalary.find(params[:id])
    @current_salary.destroy

    respond_to do |format|
      format.html { redirect_to current_salaries_url }
      format.json { head :no_content }
    end
  end
end
