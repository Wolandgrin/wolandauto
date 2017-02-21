class ItemsController < ApplicationController
  before_action :set_item, :logged_in_user, only: [:show, :edit, :update, :destroy]
  include SessionsHelper

  # GET /items
  # GET /items.json
  def index
  
  end

  # GET /items/1
  # GET /items/1.json
  def show
    if @item.user_id == current_user.id
      @item = current_user.items.find(params[:id])
    else
      flash[:danger] = "Invalid request. Probably you are not authorized to view this page"
      redirect_to current_user
    end
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
    if @item.user_id == current_user.id
    @item = current_user.items.find(params[:id])
    else
      flash[:danger] = "Invalid request. Probably you are not authorized to view this page"
      redirect_to current_user
    end
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    respond_to do |format|
      if @item.save
        format.html { redirect_to current_user, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to current_user, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to current_user, notice: 'Item was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :price, :interest, :duration) #:user_id
    end
end
