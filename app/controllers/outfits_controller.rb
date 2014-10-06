class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :edit, :update, :destroy]

  def generate
    @user = User.find_by(id: session[:user_id])
    @dress_codes = @user.items.map { |item| item[:dress_code] }
    @dress_codes_uniq = @dress_codes.uniq
    @selected_dress_code = params[:dress_code]
    random = rand(1..2)
    if random == 1
      @new_outfit_top = @user.items.where(dress_code: @selected_dress_code).where(category: "top").sample
      @new_outfit_bottom = @user.items.where(dress_code: @selected_dress_code).where(category: "bottom").sample
    else
      @new_outfit_onepiece = @user.items.where(dress_code: @selected_dress_code).where(category: "one piece").sample
    end
    @new_outfit_accessory = @user.items.where(dress_code: @selected_dress_code).where(category: "accessory").sample
    @new_outfit_shoes = @user.items.where(dress_code: @selected_dress_code).where(category: "shoes").sample
    Cameo.create(item_id: @new_outfit_onepiece.id) if @new_outfit_onepiece
    Cameo.create(item_id: @new_outfit_top.id) if @new_outfit_top
    Cameo.create(item_id: @new_outfit_bottom.id) if @new_outfit_bottom
    Cameo.create(item_id: @new_outfit_accessory.id) if @new_outfit_accessory
    Cameo.create(item_id: @new_outfit_shoes.id) if @new_outfit_shoes

  end

  def create
    @user = User.find_by(id: params[:user_id])
    @outfit = Outfit.new(outfit_params)
    @outfit.user_id = @user.id
    respond_to do |format|
      if @outfit.save
        format.html { redirect_to user_outfits_path, notice: 'Outfit was successfully saved.' }
        format.json { render :show, status: :created, location: @outfit }
      else
        format.html { render :new }
        format.json { render json: @outfit.errors, status: :unprocessable_entity }
      end
    end
    Cameo.all.where(outfit_id: nil).update_all("outfit_id" => @outfit.id)
  end

  def index
    @user = User.find_by(id: session[:user_id])
    @outfits = @user.outfits
  end

  def show
    @user = User.find_by(id: params[:user_id])
    @outfit = @user.outfits.find(params[:id])
  end

  def new
    @user = User.find_by(id: params[:user_id])
    @outfit = @user.outfits.new
  end

  def destroy
    @outfit = Outfit.find(params[:id])
    Cameo.all.where(outfit_id: @outfit.id).destroy_all
    @outfit.delete
    respond_to do |format|
      format.html { redirect_to user_outfits_path, notice: 'Outfit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def set_outfit
      @user = User.find_by(id: params[:user_id])
      @outfit = @user.outfits.find(params[:id])
    end

    def outfit_params
      params.require(:outfit).permit(:name, :user_id)
    end

end
