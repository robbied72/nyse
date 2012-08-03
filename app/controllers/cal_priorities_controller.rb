class CalPrioritiesController < ApplicationController
  # GET /cal_priorities
  # GET /cal_priorities.json
  def index
    @cal_priorities = CalPriority.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cal_priorities }
    end
  end

  # GET /cal_priorities/1
  # GET /cal_priorities/1.json
  def show
    @cal_priority = CalPriority.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cal_priority }
    end
  end

  # GET /cal_priorities/new
  # GET /cal_priorities/new.json
  def new
    @cal_priority = CalPriority.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cal_priority }
    end
  end

  # GET /cal_priorities/1/edit
  def edit
    @cal_priority = CalPriority.find(params[:id])
  end

  # POST /cal_priorities
  # POST /cal_priorities.json
  def create
    @cal_priority = CalPriority.new(params[:cal_priority])

    respond_to do |format|
      if @cal_priority.save
        format.html { redirect_to @cal_priority, notice: 'Cal priority was successfully created.' }
        format.json { render json: @cal_priority, status: :created, location: @cal_priority }
      else
        format.html { render action: "new" }
        format.json { render json: @cal_priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cal_priorities/1
  # PUT /cal_priorities/1.json
  def update
    @cal_priority = CalPriority.find(params[:id])

    respond_to do |format|
      if @cal_priority.update_attributes(params[:cal_priority])
        format.html { redirect_to @cal_priority, notice: 'Cal priority was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cal_priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cal_priorities/1
  # DELETE /cal_priorities/1.json
  def destroy
    @cal_priority = CalPriority.find(params[:id])
    @cal_priority.destroy

    respond_to do |format|
      format.html { redirect_to cal_priorities_url }
      format.json { head :no_content }
    end
  end
end
