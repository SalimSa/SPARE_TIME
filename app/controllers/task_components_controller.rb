class TaskComponentsController < ApplicationController


  def create
    @task = TaskComponent.new(task_params)
    @item = Item.find(params[:item_id])
    @task.item = @item
    @task.save
    redirect_to item_path(@item)
  end

  private

  def task_params
    params.require(:task_component).permit(:title, :details, :completed)
  end
end
