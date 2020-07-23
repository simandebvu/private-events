module InvitationsHelper
  def attend_event(event)
    if current_user.attending?(event)
      link_to 'leave', leave_event_path(event.id), method: :delete, class: 'button'
    else
      link_to 'attend', join_event_path(event.id), method: :post, class: 'button'
    end
  end
end
