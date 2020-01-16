
class ProjectsController < ApplicationController

  def index
    # Code for listing all projects goes here.
    @projects = Project.all
    render :index
  end

  def new
    # Code for new project form goes here.
    @project = Project.new
    render :new
  end

  def create
    # Code for creating a new project goes here.
    @project= Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end

  def edit
    # Code for edit project form goes here.
    @project = Project.find(params[:id])
    render :edit
  end

  def show
    # Code for showing a single project goes here.
    @project= Project.find(params[:id])
    render :show
  end

  def update
    # Code for updating an project goes here.
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    # Code for deleting an project goes here.
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

end
