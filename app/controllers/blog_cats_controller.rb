class BlogCatsController < ApplicationController
  # GET /blog_cats
  # GET /blog_cats.json
  def index
    @blog_cats = BlogCat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blog_cats }
    end
  end

  # GET /blog_cats/1
  # GET /blog_cats/1.json
  def show
    @blog_cat = BlogCat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blog_cat }
    end
  end

  # GET /blog_cats/new
  # GET /blog_cats/new.json
  def new
    @blog_cat = BlogCat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blog_cat }
    end
  end

  # GET /blog_cats/1/edit
  def edit
    @blog_cat = BlogCat.find(params[:id])
  end

  # POST /blog_cats
  # POST /blog_cats.json
  def create
    @blog_cat = BlogCat.new(params[:blog_cat])

    respond_to do |format|
      if @blog_cat.save
        format.html { redirect_to @blog_cat, notice: 'Blog cat was successfully created.' }
        format.json { render json: @blog_cat, status: :created, location: @blog_cat }
      else
        format.html { render action: "new" }
        format.json { render json: @blog_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blog_cats/1
  # PUT /blog_cats/1.json
  def update
    @blog_cat = BlogCat.find(params[:id])

    respond_to do |format|
      if @blog_cat.update_attributes(params[:blog_cat])
        format.html { redirect_to @blog_cat, notice: 'Blog cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blog_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_cats/1
  # DELETE /blog_cats/1.json
  def destroy
    @blog_cat = BlogCat.find(params[:id])
    @blog_cat.destroy

    respond_to do |format|
      format.html { redirect_to blog_cats_url }
      format.json { head :no_content }
    end
  end
end
