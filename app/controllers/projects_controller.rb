class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all.order("created_at desc")
  end

  def new
    @project = Project.new(project_params)
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to @project, notice: "hell ye dawg, u made ur project post!"
    else
      render 'new', notice: "oh shit dawg, ur project post failed!"
    end
  end

  def show

  end

private
  def project_params
    params.require(:project).permit(:title, :description, :link)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
