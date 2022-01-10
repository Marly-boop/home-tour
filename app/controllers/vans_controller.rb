class VansController < ApplicationController
  before_action :set_van, only: %i[ show edit update destroy ]

  # GET /vans or /vans.json
  def index
    @vans = Van.all
  end

  # GET /vans/1 or /vans/1.json
  def show
  end

  # GET /vans/new
  def new
    @van = Van.new
  end

  # GET /vans/1/edit
  def edit
  end

  # POST /vans or /vans.json
  def create
    @van = Van.new(van_params)

    respond_to do |format|
      if @van.save
        format.html { redirect_to @van, notice: "Van was successfully created." }
        format.json { render :show, status: :created, location: @van }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @van.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vans/1 or /vans/1.json
  def update
    respond_to do |format|
      if @van.update(van_params)
        format.html { redirect_to @van, notice: "Van was successfully updated." }
        format.json { render :show, status: :ok, location: @van }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @van.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vans/1 or /vans/1.json
  def destroy
    @van.destroy
    respond_to do |format|
      format.html { redirect_to vans_url, notice: "Van was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_van
      @van = Van.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def van_params
      params.require(:van).permit(:description, :lien)
    end
end
