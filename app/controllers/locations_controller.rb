class LocationsController < ApplicationController
  before_action :set_text, only: [:edit, :destroy, :update]
  def create
    @location = Location.new(location_params)
    @item = Item.find(params[:item_id])
    @location.item = @item
    @location.save
    redirect_to item_path(@item)
  end

  def edit
  end

  def update
    @item = Item.find(params[:item_id])
    @location.update(location_params)
    @location.item = @item
    redirect_to item_path(@item)
  end

  def destroy
    @location.destroy
    redirect_to item_path(@location.item), status: :see_other
  end

  private

  def location_params
    params.require(:location).permit(:name, :address)
  end

  def set_location
    @location = Location.find(params[:id])
  end

end
