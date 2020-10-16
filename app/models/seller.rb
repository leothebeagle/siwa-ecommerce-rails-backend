class Seller < ApplicationRecord
    has_many :seller_items 
    has_many :items, through: :seller_items 
end
