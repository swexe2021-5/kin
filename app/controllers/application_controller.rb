class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    def L4
        session[:c] ||= 0
        session[:c] = session[:c].to_i + 1
        render plain: session[:c]
    end
end
