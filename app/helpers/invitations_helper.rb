module InvitationsHelper
  def attend_event(event)
    return if current_user.nil?

    if current_user.attending?(event)
      link_to 'Leave', leave_event_path(event.id), method: :delete, class: 'btn btn-danger'
    else
      link_to 'Attend', join_event_path(event.id), method: :post, class: 'btn btn-info'
    end
  end
end
