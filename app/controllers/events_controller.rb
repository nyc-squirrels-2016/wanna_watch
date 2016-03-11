class EventsController < ApplicationController
  def index
  end

  def new
    @event = Event.new
    render "_new_event", layout: false
  end

  def create
    @user = current_user
    @event = Event.new(event_params, host_id: current_user.id)
      if @event.save
        redirect_to @event
      else
        redirect_to @user
      end
  end

  def show
    @event = Event.find(params[:id])
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:shows, :time, :date, :description, :max_occupancy)
  end
end
