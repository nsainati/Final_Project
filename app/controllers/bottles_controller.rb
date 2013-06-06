class BottlesController < ApplicationController

  before_filter :require_admin, only: [:create, :edit, :destroy]

  def index
    if params[:sort]==nil
      params[:sort]="name"
    end

    if params[:direction]==nil
      params[:direction]="asc"
    end

    @bottles = Bottle.order(params[:sort] + " " + params[:direction])

  end

  def show
    @bottle = Bottle.find_by_id(params[:id])
  end

  def new
    user = User.find_by_id(session["user_id"])
      @bottle = Bottle.new
  end

  def create
        @bottle = Bottle.new
        @bottle.name = params[:name]
        @bottle.brand_id = params[:brand_id]
        @bottle.year = params[:year]
        @bottle.color = params[:color]
        @bottle.appellation = params[:appellation]
        @bottle.style = params[:style]
        @bottle.alcohol = params[:alcohol]
        @bottle.production = params[:production]
        @bottle.price = params[:price]
        @bottle.picture_id = params[:picture_id]
        @bottle.description = params[:description]
        @bottle.save

        if @bottle.save
          redirect_to bottles_url
        else
          render 'new'
        end
  end

  def edit
      @bottle = Bottle.find_by_id(params[:id])
  end

  def update
    @bottle = Bottle.find_by_id(params[:id])
    @bottle.name = params[:name]
    @bottle.brand_id = params[:brand_id]
    @bottle.year = params[:year]
    @bottle.color = params[:color]
    @bottle.appellation = params[:appellation]
    @bottle.style = params[:style]
    @bottle.alcohol = params[:alcohol]
    @bottle.production = params[:production]
    @bottle.price = params[:price]
    @bottle.picture_id = params[:picture_id]
    @bottle.description = params[:description]
    @bottle.save

    if @bottle.save
      redirect_to bottles_url
    else
      render 'new'
    end
  end

  def destroy
        @bottle = Bottle.find_by_id(params[:id])
        @bottle.destroy
        redirect_to bottles_url
  end
end

# add bottle in form
# then create another button that says 'add occasion'
# box tag, coming off of occasions controller -> would need to get through the params hash
# link to 'or a new occasion' -> link to new occasion page

#search with a search controller w/ 'create search'.  Post search that looks through all of the tables. view that says "here's all the bottles that match, here's all the tables that match". If you don't add the headings, it will look like google.
