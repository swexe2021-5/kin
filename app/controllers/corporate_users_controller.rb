class CorporateUsersController < ApplicationController
    def new
    end
    def create
        @corporate=Corporate.find_by(name: corporate_params[:name])
        if @corporate && @corporate.authenticate(corporate_params[:password])
            redirect_to '/corporate_user/:id'
        else
            render 'new'
        end
    end
    def show
        @corporate=params[:corporate][:name]
    end
    def destroy
        sign_out
        redirect_to corporate_login_path
    end
    private
    def corporate_params
        params.require(:corporate_user).permit(:name, :password)
    end
    def corporate_user_params
        params.permit(:name, :password, :password_confirmation)
    end
end
