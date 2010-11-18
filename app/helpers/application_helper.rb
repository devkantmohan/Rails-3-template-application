module ApplicationHelper
 def admin_signed_in
  if current_user && current_user.permission == 1
    return 1
  else
    return 0
  end
 end

 

end
