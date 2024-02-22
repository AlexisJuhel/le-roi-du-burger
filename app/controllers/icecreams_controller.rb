class IcecreamsController < ApplicationController
  before_action :set_icecream, only: %i[ show edit update destroy ]

  # GET /icecreams or /icecreams.json
  def index
    @icecreams = Icecream.all
  end

  # GET /icecreams/1 or /icecreams/1.json
  def show
  end

  # GET /icecreams/new
  def new
    @icecream = Icecream.new
  end

  # GET /icecreams/1/edit
  def edit
  end

  # POST /icecreams or /icecreams.json
  def create
    @icecream = Icecream.new(icecream_params)

    respond_to do |format|
      if @icecream.save
        format.html { redirect_to icecream_url(@icecream), notice: "Icecream was successfully created." }
        format.json { render :show, status: :created, location: @icecream }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @icecream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icecreams/1 or /icecreams/1.json
  def update
    respond_to do |format|
      if @icecream.update(icecream_params)
        format.html { redirect_to icecream_url(@icecream), notice: "Icecream was successfully updated." }
        format.json { render :show, status: :ok, location: @icecream }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @icecream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icecreams/1 or /icecreams/1.json
  def destroy
    @icecream.destroy!

    respond_to do |format|
      format.html { redirect_to icecreams_url, notice: "Icecream was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icecream
      @icecream = Icecream.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def icecream_params
      params.require(:icecream).permit(:image, :name, :price, :description)
    end
end
