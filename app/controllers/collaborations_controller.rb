class CollaborationsController < ApplicationController
  # before_action :set_collaboration, only: [:show, :new, :create]
  # def new
  #   @Collaboration = Collaboration.new
  #   @theme = Theme.find(params[:theme_id])
  #   # @topic = Topic.find(params[:topic_id])
  #   # @item = Item.find(params[:item_id])
  # end

  # def create
  #   @theme = Theme.find(params[:theme_id])
  #   @Collaboration = Collaboration.new(collaboration_params)
  #   @Collaboration.theme = @theme
  #   @Collaboration.user = current_user

  #   if @Collaboration.save
  #     redirect_to collaboration_path(@collaboration)
  #   else
  #     render :new
  #   end
  # end

  # def show
  #   @collaboration = Collaboration.find(params[:id])
  # end

  # private

  # def collaboration_params
  #   params.require(:collaboration).permit(:role, :user_id, :theme_id)
  # end
end
