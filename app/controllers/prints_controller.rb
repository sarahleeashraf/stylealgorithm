class PrintsController < ApplicationController
  # GET /prints
  # GET /prints.json
  def index
    @prints = Print.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @prints }
    end
  end

  # GET /prints/1
  # GET /prints/1.json
  def show
    @print = Print.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @print }
    end
  end

  # GET /prints/new
  # GET /prints/new.json
  def new
    @print = Print.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @print }
    end
  end

  # GET /prints/1/edit
  def edit
    @print = Print.find(params[:id])
  end

  # POST /prints
  # POST /prints.json
  def create
    @print = Print.new(params[:print])

    respond_to do |format|
      if @print.save
        format.html { redirect_to @print, notice: 'Print was successfully created.' }
        format.json { render json: @print, status: :created, location: @print }
      else
        format.html { render action: "new" }
        format.json { render json: @print.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /prints/1
  # PUT /prints/1.json
  def update
    @print = Print.find(params[:id])

    respond_to do |format|
      if @print.update_attributes(params[:print])
        format.html { redirect_to @print, notice: 'Print was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @print.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prints/1
  # DELETE /prints/1.json
  def destroy
    @print = Print.find(params[:id])
    @print.destroy

    respond_to do |format|
      format.html { redirect_to prints_url }
      format.json { head :ok }
    end
  end
end
