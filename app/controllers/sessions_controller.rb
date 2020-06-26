class SessionsController < ApplicationController
    def home
        if !session[:name]
            redirect_to "/login"
        end
    end

    def new 
    end

    def create
        if params[:name] != "" && params[:name] != nil
            session[:name] = params[:name]
            redirect_to "/home"
        else
            redirect_to "/login"
        end
    end

    def destroy
        session.delete :name
    end

end