class SnarvesController < ApplicationController
  # GET /snarves
  # GET /snarves.json
  def index
    @snarves = Snarf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @snarves }
    end
  end

  # GET /snarves/1
  # GET /snarves/1.json
  def show
    @snarf = Snarf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @snarf }
    end
  end

  # GET /snarves/new
  # GET /snarves/new.json
  def new
    @snarf = Snarf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @snarf }
    end
  end

  # GET /snarves/1/edit
  def edit
    @snarf = Snarf.find(params[:id])
  end

  # POST /snarves
  # POST /snarves.json
  def create
    @snarf = Snarf.new(params[:snarf])

    respond_to do |format|
      if @snarf.save
        format.html { redirect_to @snarf, notice: 'Snarf was successfully created.' }
        format.json { render json: @snarf, status: :created, location: @snarf }
      else
        format.html { render action: "new" }
        format.json { render json: @snarf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /snarves/1
  # PUT /snarves/1.json
  def update
    @snarf = Snarf.find(params[:id])

    respond_to do |format|
      if @snarf.update_attributes(params[:snarf])
        format.html { redirect_to @snarf, notice: 'Snarf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @snarf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snarves/1
  # DELETE /snarves/1.json
  def destroy
    @snarf = Snarf.find(params[:id])
    @snarf.destroy

    respond_to do |format|
      format.html { redirect_to snarves_url }
      format.json { head :no_content }
    end
  end
end
