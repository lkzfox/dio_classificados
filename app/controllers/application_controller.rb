class ApplicationController < ActionController::Base
    helper_method :user_signed_in?

    def user_signed_in?
        current_user.present?    
    end

    def current_user
        @current_user ||= session[:id_user] if session[:id_user]
    end
    

    def check_user_signed_in
        redirect_to root_path, notice: "É necessário estar logado" unless user_signed_in?
    end
end
