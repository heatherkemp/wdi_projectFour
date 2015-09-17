class SessionsController < ApplicationController

    def new
        @session = Session.new
    end

    def create
        user = User.find_by({email: params[:email]})

        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            puts "User authenticated"
            #render app view (backbone)
        else
            redirect_to sessions_new_path
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path
    end

end