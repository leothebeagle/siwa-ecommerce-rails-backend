class UsersController < ApplicationController
  
    def create 
        user = User.create(user_params)
        user.cart = Cart.create
        # Later on you can refactor and call / redirect to the cartController. 
        # possibly better for separation of concerns. 
        session[:user_id] = user.id
        # this logs the user in.
        binding.pry 
        render json: {
          logged_in: true,
          user: current_user,
          cart: current_cart
        }
    end


    private
 
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end

 