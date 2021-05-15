class RegistrationsController < ApplicationController
  def create
    user = current_user
    event = Event.find(params[:id])

    if event.attendees.include?(user)
      redirect_to event, notice: "You're already attending this event"
    else
      event.attendees << user
      redirect_to event, notice: 'Succesfuly added to attend this event'
    end
  end

  def destroy
    event = Event.find(params[:id])

    event.attendees.delete(current_user)
    redirect_to event, notice: "You're no longer attending this event"
  end
end
