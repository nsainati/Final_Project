class FlavorsController < ApplicationController

  def index
    @flavors = Flavor.all
  end

  def show
    @flavor = Flavor.find_by_id(params[:id])
  end

  def new
    @flavor = Flavor.new
  end

  def create
    @flavor = Flavor.new
    @flavor.name = params[:name]
    @flavor.save

    if @flavor.save
      redirect_to flavors_url
    else
      render 'new'
    end
  end

  def edit
    @flavor = Flavor.find_by_id(params[:id])
  end

  def update
    @flavor = Flavor.find_by_id(params[:id])
    @flavor.name = params[:name]

    if @flavor.save
      redirect_to flavors_url
    else
      render 'new'
    end
  end

  def destroy
    @flavor = Flavor.find_by_id(params[:id])
    @flavor.destroy
    redirect_to flavors_url
  end
end
