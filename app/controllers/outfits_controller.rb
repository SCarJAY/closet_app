class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :edit, :update, :destroy]

  def generate
    @user = User.find_by(id: session[:user_id])

    #create an array of dress code
    @dress_codes = @user.items.map { |item| item[:dress_code] }
    @dress_codes_uniq = @dress_codes.uniq
    @selected_dress_code = params[:dress_code]
    # binding.pry

    random = rand(1..2)
    if random == 1
      @new_outfit_top = @user.items.where(dress_code: @selected_dress_code).where(category: "top").sample
      @new_outfit_bottom = @user.items.where(dress_code: @selected_dress_code).where(category: "bottom").sample
      # binding.pry
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
    # binding.pry
  end

  # POST /outfits
  # POST /outfits.json
  def create
    @user = User.find_by(id: params[:user_id])
    @outfit = Outfit.new(outfit_params)
    # @outfit.items <<
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
    # set all the stuff in cameo where the the outfit_id = nil to be this new id
    Cameo.all.where(outfit_id: nil).update_all("outfit_id" => @outfit.id)
  end

  # GET /outfits
  # GET /outfits.json
  def index
    @user = User.find_by(id: session[:user_id])
    @outfits = @user.outfits
  end

  # GET /outfits/1
  # GET /outfits/1.json
  def show
    @user = User.find_by(id: params[:user_id])
    @outfit = @user.outfits.find(params[:id])
  end

  # GET /outfits/new
  def new
    @user = User.find_by(id: params[:user_id])
    @outfit = @user.outfits.new
  end

  # # GET /outfits/1/edit
  # def edit
  # end

  # # PATCH/PUT /outfits/1
  # # PATCH/PUT /outfits/1.json
  # def update
  #   respond_to do |format|
  #     if @outfit.update(outfit_params)
  #       format.html { redirect_to @outfit, notice: 'Outfit was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @outfit }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @outfit.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /outfits/1
  # DELETE /outfits/1.json
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def outfit_params
      params.require(:outfit).permit(:name, :user_id)
    end

end
