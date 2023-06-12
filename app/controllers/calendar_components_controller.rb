class CalendarComponentsController < ApplicationController
  def create
    @calendar = CalendarComponent.new(calendar_params)
    @item = Item.find(params[:item_id])
    @calendar.item = @item
    @calendar.save
    redirect_to item_path(@item)
  end


  private

  def calendar_params
    params.require(:calendar_component).permit(:name, :start_time)
  end
end
