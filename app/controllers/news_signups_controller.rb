class NewsSignupsController < ApplicationController
  # GET /news_signups
  # GET /news_signups.json
  def index
    @news_signups = NewsSignup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news_signups }
    end
  end

  # GET /news_signups/1
  # GET /news_signups/1.json
  def show
    @news_signup = NewsSignup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @news_signup }
    end
  end

  # GET /news_signups/new
  # GET /news_signups/new.json
  def new
    @news_signup = NewsSignup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @news_signup }
    end
  end

  # GET /news_signups/1/edit
  def edit
    @news_signup = NewsSignup.find(params[:id])
  end

  # POST /news_signups
  # POST /news_signups.json
  def create
    @news_signup = NewsSignup.new(params[:news_signup])

    respond_to do |format|
      if @news_signup.save
        format.html { redirect_to "/", notice: 'Thanks for signing up for the New York Staff Exchange Newsletter.' }
        format.json { render json: @news_signup, status: :created, location: @news_signup }
      else
        format.html { render action: "new" }
        format.json { render json: @news_signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /news_signups/1
  # PUT /news_signups/1.json
  def update
    @news_signup = NewsSignup.find(params[:id])

    respond_to do |format|
      if @news_signup.update_attributes(params[:news_signup])
        format.html { redirect_to @news_signup, notice: 'News signup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @news_signup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_signups/1
  # DELETE /news_signups/1.json
  def destroy
    @news_signup = NewsSignup.find(params[:id])
    @news_signup.destroy

    respond_to do |format|
      format.html { redirect_to news_signups_url }
      format.json { head :no_content }
    end
  end
end
