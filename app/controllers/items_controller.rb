class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @user = User.find_by(id: params[:user_id])
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @user = User.find_by(id: params[:user_id])
    @item = @user.items.find(params[:id])
  end

  # GET /items/new
  def new
    @user = Item.new
  end

  # GET /items/1/edit
  def edit
    @user = User.find_by(id: params[:user_id])
    @item = @user.items.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @user.item = Item.new(item_params)

    respond_to do |format|
      if @user.item.save
        format.html { redirect_to @user.item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }

      else
        format.html { render :new }
        format.json { render json: @user.item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_item_path }

      else
        format.html { render :edit }
        format.json { render json: @user.item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @user.item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item

       @user = User.find_by(id: params[:user_id])
       @item = @user.items.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:img_url, :name, :category, :color, :size, :brand, :purchased_from, :user_id)
    end
end
