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
    @occasion.bottle_id = params[:bottle_id]
    @occasion.event_id = params[:event_id]

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
    @occasion.bottle_id = params[:bottle_id]
    @occasion.event_id = params[:event_id]

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
