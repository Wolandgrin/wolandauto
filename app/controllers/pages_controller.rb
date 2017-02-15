class PagesController < ApplicationController

  before_filter :find_page, only: [:edit, :update, :show, :destroy]

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice:'Item was successfully created.' }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
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
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice:'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @page.destroy
      respond_to do |format|
        format.html { redirect_to pages_url, notice:'Item was successfully deleted.' }
        format.json { head :no_content }
      end
  end

  private
    def page_params
      params[:page].permit(:name, :price, :interest, :duration)
    end

  def find_page
    @page = Page.find(params[:id])
  end
end
