class EventsController < ApplicationController
  def index
    @request = Request.new
    if params[:show] != ""
      @events = Event.search(params[:location], params[:show])
    else
      @events = Event.search(params[:location])
    end
  end

  def new
    @event = Event.new
    render "_new_event", layout: false
  end

  def create
    @user = current_user
    @event = Event.new(event_params)
    @event.host_id = @user.id
      if @event.save
        redirect_to @event
      else
        redirect_to @user
      end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
    render "_edit_event", layout: false
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      redirect_to @event
    end
  end


  def destroy
    Event.delete(params[:id])
    redirect_to current_user
  end

  private

  def event_params
    params.require(:event).permit(:show, :time, :date, :description, :max_occupancy)
  end
end
