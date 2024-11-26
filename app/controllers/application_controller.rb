class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username email photo password])
  end

  #def after_sign_in_path_for(resource)
    #calendart_path(:id)
  #end
end
