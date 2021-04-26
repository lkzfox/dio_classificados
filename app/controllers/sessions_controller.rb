class SessionsController < ApplicationController
    def new
        @user = User.new        
    end

    def create
        user = User.find_by_email(params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            reset_session
            session[:id_user] = user.id
            redirect_to root_path, notice: t('.welcome', name: user.name)
        else
            redirect_to root_path, alert: t('.invalid')
        end
    end

    def destroy
        reset_session
        redirect_to new_session_path, alert: t('.session_finished') 
    end
end