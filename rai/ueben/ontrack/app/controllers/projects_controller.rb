class ProjectsController < ApplicationController
 def index
 end
 def show
 @project = Project.find(params[:id])
 end
 def showall
 @projects = Project.all
 @i = 1
 end
 def new
 @project = Project.new
 end
 def create
 @project = Project.new(params_project)
 if @project.save
 flash[:notice] = 'project created'
 redirect_to project_path(@project.id)
 else
 render 'new'
 end
 end
 def update
 @project = Project.find(params[:id])
 if @project.update(params_project)
 redirect_to project_path(@project.id)
 else
 render 'edit'
 end
 end
 def edit
 @project = Project.find(params[:id])
 end
 def destroy
 @project = Project.find(params[:id])
 @project.destroy
 redirect_to all_path
 end
 private
 def params_project
 permitted_params = params.require(:project).permit(:title, :description, :start_date)
 end
 end
