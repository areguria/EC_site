class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: 
     	[:name_last,:name_first,:name_last_kana,
		:name_first_kana,:address,:zip_code,:phone_number,:status])
  end

end
