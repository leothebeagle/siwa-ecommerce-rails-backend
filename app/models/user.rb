class User < ApplicationRecord
    has_secure_password

    has_many :user_carts 
    has_one :carts, through: :user_carts
end
