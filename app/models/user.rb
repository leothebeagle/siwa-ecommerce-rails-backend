class User < ApplicationRecord
    has_one :user_cart 
    has_one :cart, through: :user_cart
end
