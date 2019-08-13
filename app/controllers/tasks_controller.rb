class TasksController < ApplicationController

  # before_action :find_tasks, only [:show, :edit, :update]

  def index
    @tasks = Task.all
  end

  def show
    find_tasks
    # @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    # raise
  end

  def create
    @task = Task.new(task_params)
    @task.save!
    # raise
    redirect_to tasks_path
  end

  def edit
    find_tasks
  end

  def update
    find_tasks
    @task.update(task_params)
    redirect_to task_path
  end

  def destroy
    find_tasks
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_tasks
    @task = Task.find(params[:id])
  end

  # def task_done?(task)
  #   @done = params[:done]
  #   task.completed = true if @done
  # end
end
