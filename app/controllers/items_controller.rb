class ItemsController < ApplicationController
  # before_action :set_topic, only: [:new, :show, :edit, :update, :destroy, :create]
class TopicsController < ApplicationController
  before_action :set_topic, only: [:new, :create]

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.topic = @topic
    if @topic.save
      redirect_to topic_path(@topic)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.find(params[:id])
    @components = @item.components    
  end

  # def edit
  # end

  # def update
  #   if @topic.update(topic_params)
  #     redirect_to topic_path(@topic)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @topic.destroy
  #   redirect_to topics_path, status: :see_other
  # end


  private
  def set_item
    @item = Item.find(params[:item_id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :photo)
  end

end
