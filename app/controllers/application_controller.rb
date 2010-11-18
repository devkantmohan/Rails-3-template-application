class ApplicationController < ActionController::Base
  protect_from_forgery :secret => "aert83tu54afer6udh749vaegy356a45657j35k867kbxz225f4yu8jggv"

 def authenticate_admin!
    if current_user.permission==0 
        redirect_to( :back, :alert => "Your don't have enoght permission")
    end
 end


  
end
