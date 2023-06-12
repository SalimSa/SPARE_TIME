class LocationsController < ApplicationController

  def create
    @location = Location.new(location_params)
    @item = Item.find(params[:item_id])
    @location.item = @item
    @location.save
    redirect_to item_path(@item)
  end

  private

  def location_params
    params.require(:location).permit(:name, :address)
  end

end
