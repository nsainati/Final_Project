class VarietalassignmentsController < ApplicationController
  before_filter :require_admin, only: [:create, :edit, :destroy]

  def index
    @varietalassignments = Varietalassignment.all
  end

  def show
    @varietalassignment = Varietalassignment.find_by_id(params[:id])
  end

  def new
    @varietalassignment = Varietalassignment.new
  end

  def create
    @varietalassignment = Varietalassignment.new
    @varietalassignment.bottle_id = params[:bottle_id]
    @varietalassignment.varietal_id = params[:varietal_id]

    if @varietalassignment.save
      redirect_to varietalassignments_url
    else
      render 'new'
    end
  end

  def edit
    @varietalassignment = Varietalassignment.find_by_id(params[:id])
  end

  def update
    @varietalassignment = Varietalassignment.find_by_id(params[:id])
    @varietalassignment.bottle_id = params[:bottle_id]
    @varietalassignment.varietal_id = params[:varietal_id]

    if @varietalassignment.save
      redirect_to varietalassignments_url
    else
      render 'new'
    end
  end

  def destroy
    @varietalassignment = Varietalassignment.find_by_id(params[:id])
    @varietalassignment.destroy
    redirect_to varietalassignments_url
  end
end
