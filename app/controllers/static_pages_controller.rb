class StaticPagesController < ApplicationController

  def welcome
    @title = 'Welcome to the Stock productivity calculator sample app'

    @description = 'Please log in or sign up to continue'
  end
end

