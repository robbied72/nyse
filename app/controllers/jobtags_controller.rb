class JobtagsController < ApplicationController
  # GET /jobtags
  # GET /jobtags.json
  def index
    @jobtags = Jobtag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jobtags }
    end
  end

  # GET /jobtags/1
  # GET /jobtags/1.json
  def show
    @jobtag = Jobtag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jobtag }
    end
  end

  # GET /jobtags/new
  # GET /jobtags/new.json
  def new
    @jobtag = Jobtag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @jobtag }
    end
  end

  # GET /jobtags/1/edit
  def edit
    @jobtag = Jobtag.find(params[:id])
  end

  # POST /jobtags
  # POST /jobtags.json
  def create
    @jobtag = Jobtag.new(params[:jobtag])

    respond_to do |format|
      if @jobtag.save
        format.html { redirect_to @jobtag, notice: 'Jobtag was successfully created.' }
        format.json { render json: @jobtag, status: :created, location: @jobtag }
      else
        format.html { render action: "new" }
        format.json { render json: @jobtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jobtags/1
  # PUT /jobtags/1.json
  def update
    @jobtag = Jobtag.find(params[:id])

    respond_to do |format|
      if @jobtag.update_attributes(params[:jobtag])
        format.html { redirect_to @jobtag, notice: 'Jobtag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @jobtag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobtags/1
  # DELETE /jobtags/1.json
  def destroy
    @jobtag = Jobtag.find(params[:id])
    @jobtag.destroy

    respond_to do |format|
      format.html { redirect_to jobtags_url }
      format.json { head :no_content }
    end
  end
end
