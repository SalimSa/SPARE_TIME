class CalendarComponentsController < ApplicationController
  before_action :set_calendar, only: [:edit, :destroy, :update]
  def create
    @calendar = CalendarComponent.new(calendar_params)
    @item = Item.find(params[:item_id])
    @calendar.item = @item
    @calendar.save
    redirect_to item_path(@item)
  end

  def update
    @calendar = CalendarComponent.find(params[:id])
    @calendar.update(calendar_params)
    redirect_to item_path(@calendar.item)
  end

  def destroy
    @calendar.destroy
    redirect_to item_path(@calendar.item), status: :see_other
  end

  private

  def calendar_params
    params.require(:calendar_component).permit(:name, :start_time)
  end

  def set_calendar
    @calendar = CalendarComponent.find(params[:id])
  end
end
