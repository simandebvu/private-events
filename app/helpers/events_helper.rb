module EventsHelper
  def check_user(current_user, event)
  if current_user && current_user.name ==  event.creator.name
    link_to 'Edit', edit_event_path(event) 
  end 
end
end
