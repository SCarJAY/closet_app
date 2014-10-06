class CameosController < ApplicationController
  before_action :set_cameo, only: [:show, :edit, :update, :destroy]

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

  def destroy
    @cameo.destroy
    respond_to do |format|
      format.html { redirect_to cameos_url, notice: 'Cameo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_cameo
      @cameo = Cameo.find(params[:id])
    end

    def cameo_params
      params.require(:cameo).permit(:item_id, :outfit_id)
    end
end
