class TaskComponentsController < ApplicationController
  before_action :set_text, only: [:edit, :destroy, :update]
  def create
    @task = TaskComponent.new(task_params)
    @item = Item.find(params[:item_id])
    @task.item = @item
    @task.save
    redirect_to item_path(@item)
  end

  def edit
  end

  def update
    @item = Item.find(params[:item_id])
    @task.update(task_params)
    @task.item = @item
    redirect_to item_path(@task.item)
  end

  def destroy
    @task.destroy
    redirect_to item_path(@task.item), status: :see_other
  end
  
  private

  def task_params
    params.require(:task_component).permit(:title, :details, :completed)
  end

  def set_text
    @task = TaskComponent.find(params[:id])
  end
end
