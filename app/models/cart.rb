class Cart < ApplicationRecord
    has_one :user_cart 
    has_one :user, through: :user_cart
end
