class SiteInfosController < ApplicationController
  # GET /site_infos
  # GET /site_infos.json
  def index
    @site_infos = SiteInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @site_infos }
    end
  end

  # GET /site_infos/1
  # GET /site_infos/1.json
  def show
    @site_info = SiteInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @site_info }
    end
  end

  # GET /site_infos/new
  # GET /site_infos/new.json
  def new
    @site_info = SiteInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site_info }
    end
  end

  # GET /site_infos/1/edit
  def edit
    @site_info = SiteInfo.find(params[:id])
  end

  # POST /site_infos
  # POST /site_infos.json
  def create
    @site_info = SiteInfo.new(params[:site_info])

    respond_to do |format|
      if @site_info.save
        format.html { redirect_to @site_info, notice: 'Site info was successfully created.' }
        format.json { render json: @site_info, status: :created, location: @site_info }
      else
        format.html { render action: "new" }
        format.json { render json: @site_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /site_infos/1
  # PUT /site_infos/1.json
  def update
    @site_info = SiteInfo.find(params[:id])

    respond_to do |format|
      if @site_info.update_attributes(params[:site_info])
        format.html { redirect_to @site_info, notice: 'Site info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_infos/1
  # DELETE /site_infos/1.json
  def destroy
    @site_info = SiteInfo.find(params[:id])
    @site_info.destroy

    respond_to do |format|
      format.html { redirect_to site_infos_url }
      format.json { head :no_content }
    end
  end
end
