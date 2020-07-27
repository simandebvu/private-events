module EventsHelper
  def check_user(current_user, event)
    link_to 'Edit', edit_event_path(event), class: "btn btn-success" if current_user && current_user.name == event.creator.name
  end
end
