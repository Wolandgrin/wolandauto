  class SessionsController < ApplicationController

    def new
      #@session = Session.new
    end

    def create
      user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          # Log the user in and redirect to the user's stock view.
          log_in user
          redirect_to current_user
        else
          flash.now[:danger] = 'Invalid email/password combination'
          render 'new'
        end
    end

    def destroy
      log_out if logged_in?
      redirect_to root_url
    end
  end

