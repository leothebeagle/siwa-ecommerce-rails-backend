class UsersController < ApplicationController
  
    def create 
        user = User.create(user_params)
        cart = Cart.create
        cart.user = user
        # Later on you can refactor and call / redirect to the cartController. 
        # possibly better for separation of concerns. 
        session[:user_id] = user.id
        session[:cart_id] = cart.id
        cookies[:cart_id] = cart.id
        
        render json: {
          logged_in: true,
          user: current_user,
          cart: {
            id: current_cart.id,
            items: current_cart.items,
            total: current_cart_total
        }
        }
    end


    private
 
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end

 