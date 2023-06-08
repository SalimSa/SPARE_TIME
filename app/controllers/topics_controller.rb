class TopicsController < ApplicationController
  before_action :set_theme, only: [:new, :create]

  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.theme = @theme
    if @topic.save
      redirect_to theme_path(@theme)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @topic = Topic.find(params[:id])
    @items = @topic.items
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
  def set_theme
    @theme = Theme.find(params[:theme_id])
  end

  def topic_params
    params.require(:topic).permit(:title, :description, :photo)
  end

  # def item_params
  #   params.require(:item).permit(:title, :description, :photo)
  # end

end
