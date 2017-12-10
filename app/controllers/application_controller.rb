class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
# ajouter a la fomrmulation Devise le full name (Y.B)


# Autoriser le champ fullname pour l'inscription (Y.B)
protected
def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:fullname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname])


end
end
