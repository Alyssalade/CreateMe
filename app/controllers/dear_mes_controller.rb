class DearMesController < ApplicationController
  before_action :set_dear_me, only: %i[ show edit update destroy ]

  # GET /dear_mes or /dear_mes.json
  def index
    @dear_mes = DearMe.all
  end

  # GET /dear_mes/1 or /dear_mes/1.json
  def show
  end

  # GET /dear_mes/new
  def new
    @dear_me = DearMe.new
  end

  # GET /dear_mes/1/edit
  def edit
  end

  # POST /dear_mes or /dear_mes.json
  def create
    @dear_me = DearMe.new(dear_me_params)

    respond_to do |format|
      if @dear_me.save
        format.html { redirect_to @dear_me, notice: "Votre idée a été créée avec succès !." }
        format.json { render :show, status: :created, location: @dear_me }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dear_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dear_mes/1 or /dear_mes/1.json
  def update
    respond_to do |format|
      if @dear_me.update(dear_me_params)
        format.html { redirect_to @dear_me, notice: "Votre idée a été modifiée avec succès !" }
        format.json { render :show, status: :ok, location: @dear_me }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dear_me.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dear_mes/1 or /dear_mes/1.json
  def destroy
    @dear_me.destroy
    respond_to do |format|
      format.html { redirect_to dear_mes_url, notice: "Votre idée a été supprimée avec succès !" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dear_me
      @dear_me = DearMe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dear_me_params
      params.require(:dear_me).permit(:name)
    end
end
