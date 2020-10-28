class SessionsController < ApplicationController

    def logout
        reset_session
        render json: {
            logged_out: true
        }
    end

end