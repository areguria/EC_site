class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys:
     	[:name_last,:name_first,:name_last_kana,
		:name_first_kana,:address,:zip_code,:phone_number,:status])
  end

  def after_sign_in_path_for(resource)
  	if current_customer
  	  flash[:notice] = "ログインに成功しました"
  	  customers_root_path
  	else
  	  flash[:notice] = "新規登録完了しました"
  	  customers_root_path
  	end
  end

  def after_sign_in_path_for(resource)
  	if current_admin
  	  flash[:notice] = "おかえりなさいませ管理者様"
  	  admins_root_path
  	else
  	  flash[:notice] = "登録完了です！管理者様"
  	  admins_root_path
  	end
  end

  def after_sign_out_path_for(resource)
  	if current_customer
  	  flash[:notice] = "ご利用ありがとうございました"
  	  customers_root_path
  	else
  	  flash[:notice] = "またお待ちしております！管理者様"
  	  customers_root_path
  	end
  end



end
