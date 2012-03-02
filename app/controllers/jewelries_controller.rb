class JewelriesController < ApplicationController
  # GET /jewelries
  # GET /jewelries.json
  def index
    @jewelries = Jewelry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jewelries }
    end
  end

  # GET /jewelries/1
  # GET /jewelries/1.json
  def show
    @jewelry = Jewelry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @jewelry }
    end
  end

  # GET /jewelries/new
  # GET /jewelries/new.json
  def new
    if params && params[:jewelry] && params[:jewelry][:type] 
      @jewelry = Kernel.const_get(params[:jewelry][:type]).new 
    end

    respond_to do |format|
      if @jewelry
        format.html # new.html.erb
        format.json { render json: @jewelry }
      else
        format.html { redirect_to root_url, notice: 'Jewelry must have a type'}
        format.json { render json: ''}
      end
    end
  end

  # GET /jewelries/1/edit
  def edit
    @jewelry = Jewelry.find(params[:id])
  end

  # POST /jewelries
  # POST /jewelries.json
  def create

    @jewelry = Kernel.const_get(params[:jewelry][:type]).new(params[:jewelry]) 

    p params
   
    @jewelry.color = Color.find(params[:jewelry][:color_id])
    @jewelry.label = Label.find(params[:jewelry][:label_id])
    @jewelry.material = Material.find(params[:jewelry][:material_id])
    @jewelry.user = current_user

    respond_to do |format|
      if @jewelry.save
        format.html { redirect_to @jewelry, notice: 'Jewelry was successfully created.' }
        format.json { render json: @jewelry, status: :created, location: @jewelry }
      else
        p @jewelry.errors
        format.html { render action: "new" }
        format.json { render json: @jewelry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /jewelries/1
  # PUT /jewelries/1.json
  def update
    @jewelry = Jewelry.find(params[:id])

    respond_to do |format|
      if @jewelry.update_attributes(params[:jewelry])
        format.html { redirect_to @jewelry, notice: 'Jewelry was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @jewelry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewelries/1
  # DELETE /jewelries/1.json
  def destroy
    @jewelry = Jewelry.find(params[:id])
    @jewelry.destroy

    respond_to do |format|
      format.html { redirect_to jewelries_url }
      format.json { head :ok }
    end
  end

end
