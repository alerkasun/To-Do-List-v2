class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @project = Project.find(params[:project_id])
    @task = project.tasks.create
  end

end
