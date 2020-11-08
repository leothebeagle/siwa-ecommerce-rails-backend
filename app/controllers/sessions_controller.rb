class SessionsController < ApplicationController

    def create 
        user = User.find_by(email: params[:user][:email])
     
        if user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            binding.pry
            render json: {
                logged_in: true,
                user: user,
                cart: {
                    id: current_cart.id,
                    items: current_cart.items
                }
              }
        end
    end

    def logout
        reset_session
        binding.pry
        render json: {
            logged_out: true
        }
    end

end