class SessionsController < ApplicationController

    def create 
        user = User.find_by(email: params[:user][:email])
        binding.pry
        if user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            render json: {
                logged_in: true,
                user: user
              }
        end
    end

    def logout
        reset_session
        render json: {
            logged_out: true
        }
    end

end