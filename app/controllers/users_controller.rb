class UsersController < ApplicationController
    def main
        if user_signed_in?
            render 'index2'
        else
            render 'sign_up'
        end
    end
    
    def login
        if params[:age] == "kindai" and params[:gender] == "sanriko"
            session[:login_uid] = params[:gender]
            redirect_to tops_index2_path
        else
            render 'login_failed'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end