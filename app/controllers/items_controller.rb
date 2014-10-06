class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find_by(id: params[:user_id])
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @item = @user.items.find(params[:id])
  end

  def new
    @user = User.find_by(id: params[:user_id])
    @item = @user.items.new
  end

  def edit
    @user = User.find_by(id: params[:user_id])
    @item = @user.items.find(params[:id])
  end

  def create
    @user = User.find_by(id: params[:user_id])
    @item = Item.new(item_params)
    @item.user_id = @user.id
    respond_to do |format|
      if @item.save
        format.html { redirect_to user_items_path, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @user.item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = User.find_by(id: params[:user_id])
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to user_item_path, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: user_item_path }
      else
        format.html { render :edit }
        format.json { render json: @user.item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.delete
    respond_to do |format|
      format.html { redirect_to user_items_path, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
       def set_item
       @user = User.find_by(id: params[:user_id])
       @item = @user.items.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:img_url, :name, :category, :color, :size, :brand, :dress_code, :purchased_from, :user_id)
    end
end
