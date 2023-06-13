class ThemesController < ApplicationController
  before_action :set_theme, only: [:show, :edit, :update, :destroy]

  def favorite
    @theme = Theme.find(params[:id])
    @theme.favorite = true
    if @theme.save
      redirect_to themes_path, notice: 'Theme favorited successfully.'
    else
      redirect_to themes_path, alert: 'Failed to favorite theme.'
    end
  end

  def unfavorite
    @theme = Theme.find(params[:id])
    @theme.favorite = false
    if @theme.save
      redirect_to themes_path, notice: 'Theme unfavorited successfully.'
    else
      redirect_to themes_path, alert: 'Failed to unfavorite theme.'
    end
  end

  def index

    if params[:query].nil? || params[:query] == ''
      @themes = Theme.all
    else
      @themes = Theme.search_by_title_and_description(params[:query])
    end
    # @themes = Theme.all
    @topics = Topic.all

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

  def theme_matches_search?(theme)
    theme.title.downcase.include?(params[:query].downcase)
  end


  def theme_params
    params.require(:theme).permit(:title, :description, :photo)
  end
end
