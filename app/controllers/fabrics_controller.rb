class FabricsController < ApplicationController
  # GET /fabrics
  # GET /fabrics.json
  def index
    @fabrics = Fabric.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fabrics }
    end
  end

  # GET /fabrics/1
  # GET /fabrics/1.json
  def show
    @fabric = Fabric.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fabric }
    end
  end

  # GET /fabrics/new
  # GET /fabrics/new.json
  def new
    @fabric = Fabric.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fabric }
    end
  end

  # GET /fabrics/1/edit
  def edit
    @fabric = Fabric.find(params[:id])
  end

  # POST /fabrics
  # POST /fabrics.json
  def create
    @fabric = Fabric.new(params[:fabric])

    respond_to do |format|
      if @fabric.save
        format.html { redirect_to @fabric, notice: 'Fabric was successfully created.' }
        format.json { render json: @fabric, status: :created, location: @fabric }
      else
        format.html { render action: "new" }
        format.json { render json: @fabric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fabrics/1
  # PUT /fabrics/1.json
  def update
    @fabric = Fabric.find(params[:id])

    respond_to do |format|
      if @fabric.update_attributes(params[:fabric])
        format.html { redirect_to @fabric, notice: 'Fabric was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fabric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fabrics/1
  # DELETE /fabrics/1.json
  def destroy
    @fabric = Fabric.find(params[:id])
    @fabric.destroy

    respond_to do |format|
      format.html { redirect_to fabrics_url }
      format.json { head :ok }
    end
  end
end
