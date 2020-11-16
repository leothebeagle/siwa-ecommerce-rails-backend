class OrdersController < ApplicationController
    def setup_cart_for_user
        if current_user
            new_cart = Cart.create 
            new_cart.user = current_user if current_user
            session[:cart_id] = new_cart.id
            cookies[:cart_id] = new_cart.id 
        end  
    end
    
    def create
        
        if check_cart_cookie
            order = Order.new
            order.cart = current_cart
            order.save
            setup_cart_for_user
        end
        
        render json: {
            cart: {
                id: current_user ? current_cart.id : "",
                items: current_user ? current_cart.items : [],
                total: current_user ?  current_cart_total : 0
            }
        }
        
    end
end