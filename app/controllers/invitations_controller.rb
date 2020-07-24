class InvitationsController < ApplicationController
  include UsersHelper

  def create
    @events = Event.find(params[:id])
    @attended_event = @events.invitations.build(attendee_id: current_user.id, attended_event: @events)
    if @attended_event.save
      redirect_to events_path, alert: 'you are'
    else
      redirect_to events_path, alert: 'you are already registered for this event'
    end
  end

  def destroy
    @events = Event.find(params[:id])
    current_user.attended_events.destroy(@events)
    redirect_to user_path(current_user)
  end
end
