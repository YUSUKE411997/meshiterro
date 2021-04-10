class ApplicationController < ActionController::Base
  
  
before_action :configure_permitteed_paramenters, if: :devise_controller?

def after_sign_in_path_for(resource)
  post_images_path
end 


protected

def configure_permitteed_paramenters
  devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
end 

end 


