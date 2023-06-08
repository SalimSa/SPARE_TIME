class ThemesController < ApplicationController
  before_action :set_theme, only: [:show, :edit, :update, :destroy]

  def index
    # search bar
    if params[:query].present?
      @themes = Theme.where(title: params[:query])
    else
      @themes = Theme.all
    end
    # end of search bar

    @themes = Theme.all
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new(theme_params)
    @theme.user = current_user
    if @theme.save
      redirect_to themes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @theme.user = current_user
    @themes = Theme.all
    @topics = @theme.topics
    # @markers = [{
    #     lat: @theme.latitude,
    #     lng: @theme.longitude
    #   }]
  end

  # def edit
  # end

  # def update
  #   if @theme.update(theme_params)
  #     redirect_to theme_path(@theme)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @theme.destroy
  #   redirect_to themes_path, status: :see_other
  # end


  private
  def set_theme
    @theme = Theme.find(params[:id])
  end

  def theme_params
    params.require(:theme).permit(:title, :description, :photo)
  end
end
