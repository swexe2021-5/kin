class UsersController < ApplicationController
    def login
        if params[:uid] == "kindai" and params[:pass] == "sanriko"
            session[:login_uid] = params[:uid]
            redirect_to root_path
        else
            render 'login_failed'
        end
    end
end
