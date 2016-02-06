class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :destroy]

  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    render json: @project
  end

  def create
    @project = Project.new(url: params[:url], title: params[:title], description: params[:description])
    if @project.save
      render json: @project, status: :created, location: @project
    else
      render json: @project.errors, status: 400
    end
  end

  def update
    if @project.update(url: params[:url], title: params[:title], description: params[:description])
      render json: @project
    else
      render json: @project.errors, status: 400
    end
  end

  def destroy
    @project.destroy
  end

  private
  def set_project
    begin
      @project = Project.find(params[:id])
    rescue
      render null: true, status: 404
    end
  end

  # def project_params
  #   params.slice(:url, :title, :description)
  # end
end
