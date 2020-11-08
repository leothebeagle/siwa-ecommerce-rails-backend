class UsersController < ApplicationController
  
    def create 
        user = User.create(user_params)
        user.cart = Cart.create
        session[:user_id] = user.id
        # this logs the user in.
        binding.pry 
        render json: {
          logged_in: true,
          user: current_user,
          cart: current_cart
        }
        #do you actually need to send the entire user object? or will names and email suffice?
    end


    private
 
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end

# it'll be good practice here to use strong_params