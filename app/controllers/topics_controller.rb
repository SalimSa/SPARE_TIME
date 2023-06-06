class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].nil? || params[:query] == ''
      @topics = Topic.all
    else
      @topics = Topic.search_by_title_and_description_and_price_and_location(params[:query])
    end
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.user = current_user
    if @topic.save
      redirect_to topics_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @theme = Theme.new

    @topics = Topic.all

    @markers = [{
        lat: @topic.latitude,
        lng: @topic.longitude
      }]
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
    redirect_to topics_path, status: :see_other
  end


  private
  def set_topic
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title, :description)
  end

end
