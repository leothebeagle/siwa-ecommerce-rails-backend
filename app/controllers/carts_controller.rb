class CartsController < ApplicationController
    def add_item_to_cart
        cart = Cart.find(params["cart_id"]) if params["cart_id"]
        item = Item.find(params["item"]["id"]) if params["item"]["id"]
        binding.pry
        
        if cart 
            cart.items << item 
            cart.save
        else 
            cart = Cart.create
            cart = cart 
            cart.items << item 
            cart.save 
        end
      
        render json: {
            cart: {
                id: cart.id,
                items: cart.items
            }
        }  
    end
end