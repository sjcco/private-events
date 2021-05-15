class EventsController < ApplicationController
  before_action :require_login, only: [:show]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      flash[:notice] = "Event '#{@event.title}' was successfully created!"
      redirect_to @event
    else
      if @event.errors.nil?
        flash[:alert] = "Something went wrong, please try again"
      else
        flash[:alert] = @event.errors.messages
      end
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :starting_date_time, :ending_date_time, :location)
  end

  def require_login
    unless user_signed_in?
      flash[:alert] = "You must be logged in to access this"
      redirect_to login_path      
    end
  end
end
