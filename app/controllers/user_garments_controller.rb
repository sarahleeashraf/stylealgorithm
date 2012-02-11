class UserGarmentsController < ApplicationController
  # GET /user_garments
  # GET /user_garments.json
  def index
    @user_garments = UserGarment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_garments }
    end
  end

  # GET /user_garments/1
  # GET /user_garments/1.json
  def show
    @user_garment = UserGarment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_garment }
    end
  end

  # GET /user_garments/new
  # GET /user_garments/new.json
  def new
    @user_garment = UserGarment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_garment }
    end
  end

  # GET /user_garments/1/edit
  def edit
    @user_garment = UserGarment.find(params[:id])
  end

  # POST /user_garments
  # POST /user_garments.json
  def create
    @user_garment = UserGarment.new(params[:user_garment])

    respond_to do |format|
      if @user_garment.save
        format.html { redirect_to @user_garment, notice: 'User garment was successfully created.' }
        format.json { render json: @user_garment, status: :created, location: @user_garment }
      else
        format.html { render action: "new" }
        format.json { render json: @user_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_garments/1
  # PUT /user_garments/1.json
  def update
    @user_garment = UserGarment.find(params[:id])

    respond_to do |format|
      if @user_garment.update_attributes(params[:user_garment])
        format.html { redirect_to @user_garment, notice: 'User garment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_garments/1
  # DELETE /user_garments/1.json
  def destroy
    @user_garment = UserGarment.find(params[:id])
    @user_garment.destroy

    respond_to do |format|
      format.html { redirect_to user_garments_url }
      format.json { head :ok }
    end
  end
end
