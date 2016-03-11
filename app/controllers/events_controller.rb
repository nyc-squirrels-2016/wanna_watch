class EventsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @event = Event.new(event_params)
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
    params.require(:event).permit(:shows, :time, :date, :description, :User
      max_occupancy)
  end
end
