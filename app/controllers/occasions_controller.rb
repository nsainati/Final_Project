class OccasionsController < ApplicationController

  def index
    @occasions = Occasion.all
  end

  def show
    @occasion = Occasion.find_by_id(params[:id])
  end

  def new
    @occasion = Occasion.new
  end

  def create
    @occasion = Occasion.new
    @occasion.foreign_id = params[:foreign_id]
    @occasion.occasion = params[:occasion]
    @occasion.qualities = params[:qualities]
    
    if @occasion.save
      redirect_to occasions_url
    else
      render 'new'
    end
  end

  def edit
    @occasion = Occasion.find_by_id(params[:id])
  end

  def update
    @occasion = Occasion.find_by_id(params[:id])
    @occasion.foreign_id = params[:foreign_id]
    @occasion.occasion = params[:occasion]
    @occasion.qualities = params[:qualities]
    
    if @occasion.save
      redirect_to occasions_url
    else
      render 'new'
    end
  end

  def destroy
    @occasion = Occasion.find_by_id(params[:id])
    @occasion.destroy
    redirect_to occasions_url
  end
end
