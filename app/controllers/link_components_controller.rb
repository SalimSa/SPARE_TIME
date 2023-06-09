class LinkComponentsController < ApplicationController
  def create
    @link = LinkComponent.new(link_params)
    @item = Item.find(params[:item_id])
    @link.item = @item
    @link.save
    redirect_to item_path(@item)
  end

  private

  def link_params
    params.require(:link_component).permit(:url)
  end

end
