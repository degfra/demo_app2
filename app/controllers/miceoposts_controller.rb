class MiceopostsController < ApplicationController
  # GET /miceoposts
  # GET /miceoposts.json
  def index
    @miceoposts = Miceopost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @miceoposts }
    end
  end

  # GET /miceoposts/1
  # GET /miceoposts/1.json
  def show
    @miceopost = Miceopost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @miceopost }
    end
  end

  # GET /miceoposts/new
  # GET /miceoposts/new.json
  def new
    @miceopost = Miceopost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @miceopost }
    end
  end

  # GET /miceoposts/1/edit
  def edit
    @miceopost = Miceopost.find(params[:id])
  end

  # POST /miceoposts
  # POST /miceoposts.json
  def create
    @miceopost = Miceopost.new(params[:miceopost])

    respond_to do |format|
      if @miceopost.save
        format.html { redirect_to @miceopost, notice: 'Miceopost was successfully created.' }
        format.json { render json: @miceopost, status: :created, location: @miceopost }
      else
        format.html { render action: "new" }
        format.json { render json: @miceopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /miceoposts/1
  # PUT /miceoposts/1.json
  def update
    @miceopost = Miceopost.find(params[:id])

    respond_to do |format|
      if @miceopost.update_attributes(params[:miceopost])
        format.html { redirect_to @miceopost, notice: 'Miceopost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @miceopost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miceoposts/1
  # DELETE /miceoposts/1.json
  def destroy
    @miceopost = Miceopost.find(params[:id])
    @miceopost.destroy

    respond_to do |format|
      format.html { redirect_to miceoposts_url }
      format.json { head :no_content }
    end
  end
end
