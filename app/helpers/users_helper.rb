module UsersHelper
  def check_usere(current, user)
    if current && current.name ==  user.name
    link_to 'Edit', edit_user_path(user) 
    end
  end

  def check_userd(current, user)
    if current && current.name ==  user.name
      link_to 'Destroy', user, method: :delete, data: { confirm: 'Are you sure?' }
    end
  end
end
