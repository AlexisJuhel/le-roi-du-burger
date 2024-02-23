class FriesController < ApplicationController
  before_action :set_fry, only: %i[ show edit update destroy ]

  # GET /fries or /fries.json
  def index
    @fries = Fry.all
  end

  # GET /fries/1 or /fries/1.json
  def show
  end

  # GET /fries/new
  def new
    @fry = Fry.new
  end

  # GET /fries/1/edit
  def edit
  end

  # POST /fries or /fries.json
  def create
    @fry = Fry.new(fry_params)

    respond_to do |format|
      if @fry.save
        format.html { redirect_to fry_url(@fry), notice: "Fry was successfully created." }
        format.json { render :show, status: :created, location: @fry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fries/1 or /fries/1.json
  def update
    respond_to do |format|
      if @fry.update(fry_params)
        format.html { redirect_to fry_url(@fry), notice: "Fry was successfully updated." }
        format.json { render :show, status: :ok, location: @fry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fries/1 or /fries/1.json
  def destroy
    @fry.destroy!

    respond_to do |format|
      format.html { redirect_to fries_url, notice: "Fry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fry
      @fry = Fry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fry_params
      params.require(:fry).permit(:image, :name, :price, :description)
    end
end
