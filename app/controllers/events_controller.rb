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
    if logged_in?
      @event = Event.new
      render "_new_event", layout: false
    else
      redirect_to root_path, alert: "You need to login"
    end
  end

  def create
    if logged_in?
      @user = current_user
      @event = Event.new(event_params)
      @event.host_id = @user.id
        if @event.save
          redirect_to @event
        else
          redirect_to @user, alert: @event.errors.full_messages.join(', ')
        end
    else
      redirect_to root_path, alert: "You need to login"
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    if logged_in?
      @event = Event.find(params[:id])
      if @event.host == current_user
        render "_edit_event", layout: false
      else
        redirect_to @event, alert: "You are not authorized to edit this event"
      end
    else
      redirect_to root_path, alert: "You need to login"
    end
  end

  def update
    if logged_in?
      @event = Event.find(params[:id])
      if @event.host == current_user
        if @event.update(event_params)
          redirect_to @event
        else
          redirect_to @event, alert: @event.errors.full_messages.join(', ')
        end
      else
        redirect_to @event, alert: "You are not authorized to edit this event"
      end
    else
      redirect_to root_path, alert: "You need to login"
    end
  end


  def destroy
    if logged_in?
      @event = Event.find(params[:id])
      if @event.host == current_user
        @event.destroy
        redirect_to current_user
      else
        redirect_to @event, alert: "You are not authorized to edit this event"
      end
    else
      redirect_to root_path, alert: "You need to login"
    end
  end

  private

  def event_params
    params.require(:event).permit(:show, :time, :date, :description, :max_occupancy)
  end
end
