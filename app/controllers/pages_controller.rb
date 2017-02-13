class PagesController < ApplicationController

  before_filter :find_page, only: [:edit, :update, :show, :destroy]

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def index
    @pages = Page.all
  end

  def edit
  end

  def show
    
  end

  def update
    if @page.update(page_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  def destroy
    if @page.destroy
      redirect_to pages_path
    else
      redirect_to pages_path, error: 'Unable to remove page'
    end
  end

  private
    def page_params
      params[:page].permit(:name, :description)
    end

  def find_page
    @page = Page.find(params[:id])
  end
end
