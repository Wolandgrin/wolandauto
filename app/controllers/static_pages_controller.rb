class StaticPagesController < ApplicationController

  def welcome
    @title = 'Welcome to the Stock productivity calculator sample app'

    @description = 'Please sign in or sign up to continue'
  end
end
