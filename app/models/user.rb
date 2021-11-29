class User < ApplicationRecord
    has_many :likes
    has_many :brows, through: :likes
end
