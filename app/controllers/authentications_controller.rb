class AuthenticationsController < ApplicationController

  skip_before_filter :verify_authenticity_token, :except => [:index]
  before_filter :authenticate_user! ,:only => [:index, :edit, :update, :destroy]


  def index
      @authentications = current_user.authentications if current_user  
  end
  
  def show
    @authentication = Authentication.find(params[:id])
  end
  
  def new
    @authentication = Authentication.new
  end
  
  def create
      omniauth = request.env["omniauth.auth"]
      authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
      if authentication
        flash[:notice] = "Signed in successfully."
        sign_in_and_redirect(:user, authentication.user)
      elsif current_user
        current_user.authentications.create(:provider => omniauth['provider'], :uid => omniauth['uid'])
        flash[:notice] = "Authentication successful."
        redirect_to authentications_url
     else
               user = User.new
               user.apply_omniauth(omniauth)
               user.email=' ' if !user.email
                if user.save(:validate => false)
                  flash[:notice] = "Signed in successfully."
                  sign_in(user)
                  redirect_to edit_authentication_path(user)
                else
                  session[:omniauth] = omniauth.except('extra')
                  redirect_to new_user_registration_url
               end
     end
   end


  def edit
    @user = User.find(params[:id])
  end
  
  def update
   @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Successfully updated authentication."
      redirect_to root_path
    else
      render :action => 'edit'
    end
  end
  
  def destroy
   @authentication = current_user.authentications.find(params[:id])
   @authentication.destroy
   flash[:notice] = "Successfully destroyed authentication."
   redirect_to authentications_url
  end

   
end
