class AccountsController < ApplicationController

    def index
        if session[:user_id]
            render :index
        else
            redirect_to root_path
        end
    end
end