class UsersController < ApplicationController
    def main
        if session[:login_uid]
            render 'tops/index'
        else
            render 'login'
        end
    end
    
    def login
        if params[:age] == "kindai" and params[:gender] == "sanriko"
            session[:login_uid] = params[:age]
            redirect_to tops_path
        else
            render 'login_failed'
        end
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end