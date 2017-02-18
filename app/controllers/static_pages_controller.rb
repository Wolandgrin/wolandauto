class StaticPagesController < ApplicationController

  # def home
  #   @item = current_user.items.build if logged_in?
  # end

  def welcome
    @title = 'Welcome to the Stock productivity calculator sample app'

    @description = 'Please log in or sign up to continue'
  end
end

