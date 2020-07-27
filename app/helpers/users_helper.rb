module UsersHelper
  def check_usere(current, user)
    link_to 'Edit', edit_user_path(user), class: 'btn btn-info' if current && current.name == user.name
  end

  def check_userd(current, user)
    link_to 'Destroy', user, method: :delete, class: 'btn btn-danger', data: { confirm: 'Are you sure?' } if current && current.name == user.name
  end
end
