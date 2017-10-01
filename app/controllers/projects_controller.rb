class ProjectsController < ApplicationController
  skip_before_action :authenticate_admin!, only: [:index]

  def index
    @projects = Project.all
  end
  
  def new
    @project = current_admin.projects.new
  end

  def create
    @project = current_admin.projects.new(project_params)
    if @project.save
      flash[:notice] = "The project has been added"
      redirect_to projects_path
    else
      render :new
    end
  end

  def show
    @project = Project.find(params.fetch(:id))
  end

  def edit
    @project = Project.find(params.fetch(:id))
  end

  def update
    @project = Project.find(params.fetch(:id))
    if @project.update(project_params)
      flash[:notice] = "The project has been saved"
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    project = Project.find(params.fetch(:id))
    project.destroy
    redirect_to projects_path
  end

private
  def project_params
    params.require(:project).permit(
      :description,
      :link,
      :order,
      :screenshot,
      :title,
      :visible,
      :year
    )
  end
end