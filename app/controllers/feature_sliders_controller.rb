class FeatureSlidersController < ApplicationController
  # GET /feature_sliders
  # GET /feature_sliders.json
  def index
    @feature_sliders = FeatureSlider.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @feature_sliders }
    end
  end

  # GET /feature_sliders/1
  # GET /feature_sliders/1.json
  def show
    @feature_slider = FeatureSlider.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @feature_slider }
    end
  end

  # GET /feature_sliders/new
  # GET /feature_sliders/new.json
  def new
    @feature_slider = FeatureSlider.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @feature_slider }
    end
  end

  # GET /feature_sliders/1/edit
  def edit
    @feature_slider = FeatureSlider.find(params[:id])
  end

  # POST /feature_sliders
  # POST /feature_sliders.json
  def create
    @feature_slider = FeatureSlider.new(params[:feature_slider])

    respond_to do |format|
      if @feature_slider.save
        format.html { redirect_to @feature_slider, notice: 'Feature slider was successfully created.' }
        format.json { render json: @feature_slider, status: :created, location: @feature_slider }
      else
        format.html { render action: "new" }
        format.json { render json: @feature_slider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /feature_sliders/1
  # PUT /feature_sliders/1.json
  def update
    @feature_slider = FeatureSlider.find(params[:id])

    respond_to do |format|
      if @feature_slider.update_attributes(params[:feature_slider])
        format.html { redirect_to @feature_slider, notice: 'Feature slider was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @feature_slider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_sliders/1
  # DELETE /feature_sliders/1.json
  def destroy
    @feature_slider = FeatureSlider.find(params[:id])
    @feature_slider.destroy

    respond_to do |format|
      format.html { redirect_to feature_sliders_url }
      format.json { head :no_content }
    end
  end
end
