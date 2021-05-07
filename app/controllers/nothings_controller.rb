class NothingsController < ApplicationController
  before_action :set_nothing, only: %i[ show edit update destroy ]

  # GET /nothings or /nothings.json
  def index
    @nothings = Nothing.all
  end

  # GET /nothings/1 or /nothings/1.json
  def show
  end

  # GET /nothings/new
  def new
    @nothing = Nothing.new
  end

  # GET /nothings/1/edit
  def edit
  end

  # POST /nothings or /nothings.json
  def create
    @nothing = Nothing.new(nothing_params)

    respond_to do |format|
      if @nothing.save
        format.html { redirect_to @nothing, notice: "Nothing was successfully created." }
        format.json { render :show, status: :created, location: @nothing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nothings/1 or /nothings/1.json
  def update
    respond_to do |format|
      if @nothing.update(nothing_params)
        format.html { redirect_to @nothing, notice: "Nothing was successfully updated." }
        format.json { render :show, status: :ok, location: @nothing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nothing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nothings/1 or /nothings/1.json
  def destroy
    @nothing.destroy
    respond_to do |format|
      format.html { redirect_to nothings_url, notice: "Nothing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nothing
      @nothing = Nothing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nothing_params
      params.require(:nothing).permit(:name)
    end
end
