class OutfitsController < ApplicationController
  before_action :set_outfit, only: [:show, :edit, :update, :destroy]

  def generate
    @outfit = Outfit.generate
  end

  # GET /outfits
  # GET /outfits.json
  def index
    @outfits = Outfit.all
  end

  # GET /outfits/1
  # GET /outfits/1.json
  def show
  end

  # GET /outfits/new
  def new
    @outfit = Outfit.new
  end

  # GET /outfits/1/edit
  def edit
  end

  # POST /outfits
  # POST /outfits.json
  def create
    @outfit = Outfit.new(outfit_params)

    respond_to do |format|
      if @outfit.save
        format.html { redirect_to @outfit, notice: 'Outfit was successfully created.' }
        format.json { render :show, status: :created, location: @outfit }
      else
        format.html { render :new }
        format.json { render json: @outfit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outfits/1
  # PATCH/PUT /outfits/1.json
  def update
    respond_to do |format|
      if @outfit.update(outfit_params)
        format.html { redirect_to @outfit, notice: 'Outfit was successfully updated.' }
        format.json { render :show, status: :ok, location: @outfit }
      else
        format.html { render :edit }
        format.json { render json: @outfit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outfits/1
  # DELETE /outfits/1.json
  def destroy
    @outfit.destroy
    respond_to do |format|
      format.html { redirect_to outfits_url, notice: 'Outfit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outfit

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outfit_params
      params.require(:outfit).permit(:dress_code, :top, :bottom, :one_piece, :shoes, :accessory, :user_id)
    end
end
