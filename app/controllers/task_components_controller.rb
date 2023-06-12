class TaskComponentsController < ApplicationController


  def create
    @task = TaskComponent.new(task_params)
    @item = Item.find(params[:item_id])
    @task.item = @item
    @task.save
    redirect_to item_path(@item)
  end

  def update
    @task = TaskComponent.find(params[:id])
    @task.update(task_params)
    redirect_to item_path(@task.item)
  end

  private

  def task_params
    params.require(:task_component).permit(:title, :details, :completed)
  end
end
