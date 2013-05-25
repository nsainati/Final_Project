class BootstrapsController < ApplicationController
  # GET /bootstraps
  # GET /bootstraps.json
  def index
    @bootstraps = Bootstrap.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bootstraps }
    end
  end

  # GET /bootstraps/1
  # GET /bootstraps/1.json
  def show
    @bootstrap = Bootstrap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bootstrap }
    end
  end

  # GET /bootstraps/new
  # GET /bootstraps/new.json
  def new
    @bootstrap = Bootstrap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bootstrap }
    end
  end

  # GET /bootstraps/1/edit
  def edit
    @bootstrap = Bootstrap.find(params[:id])
  end

  # POST /bootstraps
  # POST /bootstraps.json
  def create
    @bootstrap = Bootstrap.new(params[:bootstrap])

    respond_to do |format|
      if @bootstrap.save
        format.html { redirect_to @bootstrap, notice: 'Bootstrap was successfully created.' }
        format.json { render json: @bootstrap, status: :created, location: @bootstrap }
      else
        format.html { render action: "new" }
        format.json { render json: @bootstrap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bootstraps/1
  # PUT /bootstraps/1.json
  def update
    @bootstrap = Bootstrap.find(params[:id])

    respond_to do |format|
      if @bootstrap.update_attributes(params[:bootstrap])
        format.html { redirect_to @bootstrap, notice: 'Bootstrap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bootstrap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bootstraps/1
  # DELETE /bootstraps/1.json
  def destroy
    @bootstrap = Bootstrap.find(params[:id])
    @bootstrap.destroy

    respond_to do |format|
      format.html { redirect_to bootstraps_url }
      format.json { head :no_content }
    end
  end
end
