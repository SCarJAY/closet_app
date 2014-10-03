class CameosController < ApplicationController
  before_action :set_cameo, only: [:show, :edit, :update, :destroy]

  # GET /cameos
  # GET /cameos.json
  def index
    @cameos = Cameo.all
  end

  # GET /cameos/1
  # GET /cameos/1.json
  def show
  end

  # GET /cameos/new
  def new
    @cameo = Cameo.new
  end

  # GET /cameos/1/edit
  def edit
  end

  # POST /cameos
  # POST /cameos.json
  def create
    @cameo = Cameo.new(cameo_params)

    respond_to do |format|
      if @cameo.save
        format.html { redirect_to @cameo, notice: 'Cameo was successfully created.' }
        format.json { render :show, status: :created, location: @cameo }
      else
        format.html { render :new }
        format.json { render json: @cameo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cameos/1
  # PATCH/PUT /cameos/1.json
  def update
    respond_to do |format|
      if @cameo.update(cameo_params)
        format.html { redirect_to @cameo, notice: 'Cameo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cameo }
      else
        format.html { render :edit }
        format.json { render json: @cameo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cameos/1
  # DELETE /cameos/1.json
  def destroy
    @cameo.destroy
    respond_to do |format|
      format.html { redirect_to cameos_url, notice: 'Cameo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cameo
      @cameo = Cameo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cameo_params
      params.require(:cameo).permit(:item_id, :outfit_id)
    end
end
