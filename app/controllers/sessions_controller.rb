class SessionsController < ApplicationController
    
    def new
    end
    
    def create
        user=User.find_by(email: session_params[:email])#まず、送られてきたメースアドレスでユーザーを検索する
        
        if user&.authenticate(session_params[:password])#ユーザーが見つかった場合には、送られてきたパスワードによる認証をauthenticateメソッドを使って行います
          session[:user_id]=user.id#認証に成功した場合に、セッションにuser_idを格納しています。
        
          redirect_to root_path, notice: 'ログインしました'
        
        else
          render :new
        end
    end
    
    skip_before_action :login_required
    
end
