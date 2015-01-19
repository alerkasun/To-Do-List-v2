class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def projects_params
    params.require(:project).permit(:name)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(projects_params)

    if @project.save
      redirect_to projects_path, :notice => " Your new project created! "
    else
      render "new"
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(projects_params)
      redirect_to projects_path, :notice => " Your project updated! "
    else
      render "edit"
    end
  end

  def destroy
     @project = Project.find(params[:id])
     @project.destroy

     redirect_to projects_path, notice => "Your project was deleted!"
  end
end
