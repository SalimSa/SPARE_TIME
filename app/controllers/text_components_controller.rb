class TextComponentsController < ApplicationController
  before_action :set_text, only: [:edit, :destroy, :update]
  def create
    @text = TextComponent.new(text_params)
    @item = Item.find(params[:item_id])
    @text.item = @item
    @text.save
    redirect_to item_path(@item)
  end

  def edit
  end

  def update
    @item = Item.find(params[:item_id])
    @text.update(text_params)
    @text.item = @item
    redirect_to item_path(@item)
  end

  def destroy
    @text.destroy
    redirect_to item_path(@text.item), status: :see_other
  end


  private

  def text_params
    params.require(:text_component).permit(:paragraph)
  end

  def set_text
    @text = TextComponent.find(params[:id])
  end
end
