class TasksController < ApplicationController
 before_action :set_project
 def index
 @tasks = @project.tasks
 end
 def show
 @task = @project.tasks.find(params[:id])
 end
 def new
 @task = @project.tasks.new
 end
 def create
 @task = @project.tasks.new(task_params)
 if @task.save
 redirect_to project_task_path(@project.id, @task.id), alert: 'tasks created'
 else
 render 'new'
 end
 end
 def update
 @task = @project.tasks.find(params[:id])
 if @task.update(task_params)
 redirect_to project_tasks_path(@project.id)
 else
 render 'edit'
 end
 end
 def edit
 @task = @project.tasks.find(params[:id])
 end
 def destroy
 @task = @project.tasks.find(params[:id])
 @task.destroy
 redirect_to project_tasks_path(@project.id)
 end
 private
 def set_project
 @project = Project.find(params[:project_id])
 end
 def task_params
 params.require(:task).permit(:title , :description , :start_date , :end_date)
 end
 end
