class VansController < ApplicationController
  before_action :set_van, only: %i[ show edit update destroy ]

  def index
    @vans = Van.all
  end

  def show
  end

  def new
    @van = Van.new
  end

  def edit
  end

  def create
    @van = Van.new(van_params)

    respond_to do |format|
      if @van.save
        format.json { render :show, status: :created, location: @van }
      else
        format.json { render json: @van.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @van.update(van_params)
        format.json { render :show, status: :ok, location: @van }
      else
        format.json { render json: @van.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @van.destroy
    respond_to do |format|
      format.html { redirect_to vans_url, notice: "Van was successfully destroyed." }
    end
  end

  private

    def set_van
      @van = Van.find(params[:id])
    end

    def van_params
      params.require(:van).permit(:description, :link, :title)
    end
end
