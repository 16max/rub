class TasksController < ApplicationController
  before_action :set_project

  def index
    @tasks = @project.tasks
  end

  def new
    @task = @project.tasks.new
  end

  def create
    @task = @project.tasks.new(task_params)
    if @task.save
      redirect_to project_path(@project.id), alert: "Richtig Krass!"
    else
      render "new"
    end

    def destroy
      
    end
  end

private
  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:title , :description , :start_date , :end_date)
  end
end