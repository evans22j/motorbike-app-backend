class MotorbikesController < ApplicationController
  before_action :set_motorbike, only: %i[show update destroy]

  # GET /motorbikes
  def index
    @motorbikes = Motorbike.all

    render json: @motorbikes
  end

  # GET /motorbikes/1
  def show
    render json: @motorbike
  end

  # POST /motorbikes
  def create
    @motorbike = Motorbike.new(motorbike_params)

    if @motorbike.save
      render json: @motorbike, status: :created, location: @motorbike
    else
      render json: @motorbike.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /motorbikes/1
  def update
    if @motorbike.update(motorbike_params)
      render json: @motorbike
    else
      render json: @motorbike.errors, status: :unprocessable_entity
    end
  end

  # DELETE /motorbikes/1
  def destroy
    @motorbike.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_motorbike
    @motorbike = Motorbike.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def motorbike_params
    params.require(:motorbike).permit(:name, :image, :description, :price, :user_id)
  end
end
