class ItemsController < ApplicationController
  before_action :set_topic, only: [:create]

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    # @components = @item.components
    @text = TextComponent.new
    @texts = TextComponent.where(item: @item)

    @link = LinkComponent.new
    @links = LinkComponent.where(item: @item)
    @topic = @item.topic
    # @hope = LinkThumbnailer.generate('http://stackoverflow.com')
    @location = Location.new
    @locations = @item.locations
    @markers = @locations.geocoded.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
    end
  end

  def new
    @item = Item.new
    @topic = Topic.find(params[:topic_id])
  end

  def create
    @item = Item.new(item_params)
    @item.topic = @topic
    if @item.save!
      redirect_to item_path(@item)
    else
      render :new, status: :unprocessable_entity
    end
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
  def set_topic
    @topic = Topic.find(params[:topic_id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :photo)
  end
end
