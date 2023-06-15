class LinkComponentsController < ApplicationController
  before_action :set_link, only: [:destroy]
  def create
    link_params
    if link_params[:url].match?(/https?\:(\\\\|\/\/)(www.)?/)

      @link =  LinkComponent.new(link_params)
    else
      @link =  LinkComponent.new(url: "http://#{link_params[:url]}")
    end


    # @link = LinkComponent.new("www.#{link_params.sub(/https?\:(\\\\|\/\/)(www.)?/,'')}")
    @item = Item.find(params[:item_id])
    @link.item = @item
    @link.save
    redirect_to item_path(@item)
  end

  def destroy
    @link.destroy
    redirect_to item_path(@link.item), status: :see_other
  end

  private

  def link_params
    params.require(:link_component).permit(:url)
  end

  def set_link
    @link = LinkComponent.find(params[:id])
  end

end
