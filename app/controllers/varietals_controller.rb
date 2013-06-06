class VarietalsController < ApplicationController
  before_filter :require_admin, only: [:create, :edit, :destroy]

  def index
    @varietals = Varietal.all
  end

  def show
    @varietal = Varietal.find_by_id(params[:id])
  end

  def new
    @varietal = Varietal.new
  end

  def create
    @varietal = Varietal.new
    @varietal.name = params[:name]

    if @varietal.save
      redirect_to varietals_url
    else
      render 'new'
    end
  end

  def edit
    @varietal = Varietal.find_by_id(params[:id])
  end

  def update
    @varietal = Varietal.find_by_id(params[:id])
    @varietal.name = params[:name]

    if @varietal.save
      redirect_to varietals_url
    else
      render 'new'
    end
  end

  def destroy
    @varietal = Varietal.find_by_id(params[:id])
    @varietal.destroy
    redirect_to varietals_url
  end
end
