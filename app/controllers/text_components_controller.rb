class TextComponentsController < ApplicationController
  def create
    @text = TextComponent.new(text_paramns)
    @item = Item.find(params[:item_id])
    @text.item = @item
    @text.save
    redirect_to item_path(@item)
  end


  private

  def text_paramns
    params.require(:text_component).permit(:paragraph)
  end
end
