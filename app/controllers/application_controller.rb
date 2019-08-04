class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

	def new

		build_resources({})
		resources.build_profile
		repond_with self.resource
	end




protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password, :profile_attributes => [:user_id, :first_name, :last_name, :avatar]])
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :profile_id, :first_name, :last_name, :avatar])
      #devise_parameter_sanitizer.permit(:sign_up, keys: [:email, profile_attributes: [:first_name, :last_name]])

    end

# private

#     def configure_permitted_parameters
#         devise_parameter_sanitizer.permit(:sign_up, keys: [:student_id, :email, :password, :password_confirmation])
#         devise_parameter_sanitizer.permit(:sign_in, keys: [:student_id, :password, :avatar])
#     	devise_parameter_sanitizer.permit (:account_update, keys: [:email, :avatar])
#     end

  # protected 

  # 	def configure_permitted_parameters
  # 		#devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  # 		devise_parameter_sanitizer.permit(:account_update, keys: [:email,:current_password, :avatar])
  # 		 devise_parameter_sanitizer.permit(:sign_up, keys: [{ profile_attributes: :first_name }])
  # 	end
end
