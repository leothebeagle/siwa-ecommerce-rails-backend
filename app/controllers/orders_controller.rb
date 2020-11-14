class OrdersController < ApplicationController
    def create
        
        if check_cart_cookie
            order = Order.new
            order.cart = current_cart
            order.save
            new_cart = Cart.create 
            session[:cart_id] = new_cart.id
            cookies[:cart_id] = new_cart.id
        end
        
        binding.pry


        render json: {
            cart: {
                id: current_cart.id,
                items: current_cart.items
            }
        }
        
    end
end