class TopicsController < ApplicationController
  before_action :set_theme, only: [:new, :create]
  before_action :set_topic, only: [:edit, :update, :destroy, :show]


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
    @items = @topic.items
    @item = Item.new
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to topic_path(@topic)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @topic.destroy
    redirect_to theme_path(@topic.theme), status: :see_other
  end

  private
  def set_theme
    @theme = Theme.find(params[:theme_id])
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title, :description, :photo)
  end
end
