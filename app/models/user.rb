class User < ApplicationRecord
    before_save {self.email=email.downcase}
    validates :age,presence: true
    validates :gender,presence: true
    validates :email, presence: true, uniqueness: true
    validates :password,presence: true
    validates :password_confirmation,presence: true
    
    def self.new_remember_token
        SecureRandom.urlsafe_base64
    end
    def self.encrypt(token)
        Digest::SHA256.hexdigest(token.to_s)
    end
    
    has_secure_password
end
