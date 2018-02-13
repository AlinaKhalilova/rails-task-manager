class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

   def create
    @task = Task.new(params[:task])
    @restaurant.save

  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  def update
  @task = Task.find(params[:id])
  @task.update[params[:task]]
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end
end




