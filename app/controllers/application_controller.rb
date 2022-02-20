class ApplicationController < ActionController::Base
    def index
        if user_signed_in?
            redirect_to categories_url 
        else
            redirect_to new_user_session_url
        end
    end
end
