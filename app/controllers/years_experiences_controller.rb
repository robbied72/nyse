class YearsExperiencesController < ApplicationController
  # GET /years_experiences
  # GET /years_experiences.json
  def index
    @years_experiences = YearsExperience.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @years_experiences }
    end
  end

  # GET /years_experiences/1
  # GET /years_experiences/1.json
  def show
    @years_experience = YearsExperience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @years_experience }
    end
  end

  # GET /years_experiences/new
  # GET /years_experiences/new.json
  def new
    @years_experience = YearsExperience.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @years_experience }
    end
  end

  # GET /years_experiences/1/edit
  def edit
    @years_experience = YearsExperience.find(params[:id])
  end

  # POST /years_experiences
  # POST /years_experiences.json
  def create
    @years_experience = YearsExperience.new(params[:years_experience])

    respond_to do |format|
      if @years_experience.save
        format.html { redirect_to @years_experience, notice: 'Years experience was successfully created.' }
        format.json { render json: @years_experience, status: :created, location: @years_experience }
      else
        format.html { render action: "new" }
        format.json { render json: @years_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /years_experiences/1
  # PUT /years_experiences/1.json
  def update
    @years_experience = YearsExperience.find(params[:id])

    respond_to do |format|
      if @years_experience.update_attributes(params[:years_experience])
        format.html { redirect_to @years_experience, notice: 'Years experience was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @years_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /years_experiences/1
  # DELETE /years_experiences/1.json
  def destroy
    @years_experience = YearsExperience.find(params[:id])
    @years_experience.destroy

    respond_to do |format|
      format.html { redirect_to years_experiences_url }
      format.json { head :no_content }
    end
  end
end
