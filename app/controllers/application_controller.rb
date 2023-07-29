class ApplicationController < ActionController::Base
    include ActionController::MimeResponds
    
    protect_from_forgery except: :sign_in
    # protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?

    # before_action :set_current_user, if: :json_request?

    # private
    # def json_request?
    #     request.format.json?
    # end
    # # Use api_user Devise scope for JSON access
    # def authenticate_user!(*args)
    #     super and return unless args.blank?
    #     json_request? ? authenticate_api_user! : super
    # end
    # def invalid_auth_token
    #     respond_to do |format|
    #     format.html { redirect_to sign_in_path, 
    #                     error: 'Login invalid or expired' }
    #     format.json { head 401 }
    #     end
    # end
    # # So we can use Pundit policies for api_users
    # def set_current_user
    #     @current_user ||= warden.authenticate(scope: :api_user)
    # end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :email, :password])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
        # devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
    end
end
