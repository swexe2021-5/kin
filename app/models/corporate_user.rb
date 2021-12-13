class CorporateUser < ApplicationRecord
    def destroy
        sign_out
        redirect_to corporate_login_path
    end
    
    has_secure_password
end
