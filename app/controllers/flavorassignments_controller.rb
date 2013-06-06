class FlavorassignmentsController < ApplicationController
  before_filter :require_admin, only: [:create, :edit, :destroy]

  def index
    @flavorassignments = Flavorassignment.all
  end

  def show
    @flavorassignment = Flavorassignment.find_by_id(params[:id])
  end

  def new
    @flavorassignment = Flavorassignment.new
  end

  def create
    @flavorassignment = Flavorassignment.new
    @flavorassignment.bottle_id = params[:bottle_id]
    @flavorassignment.flavor_id = params[:flavor_id]

    if @flavorassignment.save
      redirect_to flavorassignments_url
    else
      render 'new'
    end
  end

  def edit
    @flavorassignment = Flavorassignment.find_by_id(params[:id])
  end

  def update
    @flavorassignment = Flavorassignment.find_by_id(params[:id])
    @flavorassignment.bottle_id = params[:bottle_id]
    @flavorassignment.flavor_id = params[:flavor_id]

    if @flavorassignment.save
      redirect_to flavorassignments_url
    else
      render 'new'
    end
  end

  def destroy
    @flavorassignment = Flavorassignment.find_by_id(params[:id])
    @flavorassignment.destroy
    redirect_to flavorassignments_url
  end
end
