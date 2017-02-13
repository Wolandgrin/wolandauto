class StaticPagesController < ApplicationController

  def welcome
    @title = 'Welcome ))'
  end

  def about_us
    @title='коротко о главном'
  end
end

