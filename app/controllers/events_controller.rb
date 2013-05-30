class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find_by_id(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.event = params[:event]
    
    if @event.save
      redirect_to events_url
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find_by_id(params[:id])
  end

  def update
    @event = Event.find_by_id(params[:id])
    @event.event = params[:event]
    
    if @event.save
      redirect_to events_url
    else
      render 'new'
    end
  end

  def destroy
    @event = Event.find_by_id(params[:id])
    @event.destroy
    redirect_to events_url
  end
end
