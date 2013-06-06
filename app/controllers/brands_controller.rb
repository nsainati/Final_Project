class BrandsController < ApplicationController
  before_filter :require_admin, only: [:create, :edit, :destroy]

  def index
    @brands = Brand.all
  end

  def show
    @brand = Brand.find_by_id(params[:id])
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new
    @brand.name = params[:name]
    @brand.location = params[:location]

    if @brand.save
      redirect_to brands_url
    else
      render 'new'
    end
  end

  def edit
    @brand = Brand.find_by_id(params[:id])
  end

  def update
    @brand = Brand.find_by_id(params[:id])
    @brand.name = params[:name]
    @brand.location = params[:location]

    if @brand.save
      redirect_to brands_url
    else
      render 'new'
    end
  end

  def destroy
    @brand = Brand.find_by_id(params[:id])
    @brand.destroy
    redirect_to brands_url
  end
end
