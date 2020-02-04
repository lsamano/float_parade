class BalloonsController < ApplicationController
  # before_action :set_balloon, only: [:show, :edit]

  def index
    @balloons = Balloon.all
  end

  def show
    @balloon = Balloon.find(params[:id])
  end

  def new
    @balloon = Balloon.new
    @parades = Parade.all
  end

  def create
    @balloon = Balloon.create(balloon_params)
    redirect_to @balloon
  end

  def edit
    @balloon = Balloon.find(params[:id])
    @parades = Parade.all
  end

  def update
    @balloon = Balloon.find(params[:id])
    @balloon.update(balloon_params)
    redirect_to @balloon
  end

  def destroy
    @balloon = Balloon.find(params[:id])
    @balloon.destroy
    redirect_to balloons_path
  end

  private

  def set_balloon
    @balloon = Balloon.find(params[:id])
  end

  def balloon_params
    params.require(:balloon).permit(:name, :parade_id, :color, :size)
  end
end
