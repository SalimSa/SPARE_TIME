class ComponentsController < ApplicationController
  before_action :set_component, only: [:show, :edit, :update, :destroy]

  def index
    @component = Component.all
  end

  def new
    @component = Component.new
  end

  def create
    @component = Component.new(component_params)
    @component.user = current_user
    if @component.save
      redirect_to components_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @item = Item.new
    @components = Component.all
  end

  # def edit
  # end

  # def update
  #   if @component.update(component_params)
  #     redirect_to component_path(@component)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @component.destroy
  #   redirect_to components_path, status: :see_other
  # end

  private
  def set_component
    @component = Component.find(params[:id])
  end

  def component_params
    params.require(:component).permit(:title, :description)
  end
end
