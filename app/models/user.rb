class User < ApplicationRecord
    device :database_aythenticatable, :registerable,:recoverable, :rememberable, :trackable, :validatable
    has_many :posts, dependent: :destroy
end
