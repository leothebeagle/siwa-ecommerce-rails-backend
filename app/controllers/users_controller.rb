class UsersController < ApplicationController

    def create 
        user = User.create(user_params)
        binding.pry
    end


    private
 
    def user_params
      params.require(:user).permit(:first_name, :last_Name, :email, :password, :password_confirmation)
    end

end

# it'll be good practice here to use strong_params