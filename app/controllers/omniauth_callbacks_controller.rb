class OmniauthCallbacksController < Devise::OmniauthCallbacksController



def new
end

def facebook
@user = User.from_omniauth(request.env["omniauth.auth"])
if @user.persisted?
	sign_in_add_redirect @user, :event => :authentication
	set_flash_message(:notice, :succes, :kind => "Facebook") if is_navigation_format?
else
	session["devise.facebook_data"] = request.env["omniauth.auth"]
	redirect_to new_user_registration_url
end
end


end