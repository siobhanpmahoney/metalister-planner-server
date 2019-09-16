class Api::V1::ProjectsController < ApplicationController
    def index
        @projects = Project.all 
        render json: @projects
    end

    def create
        @project = Project.new(project_params)
        if @project.save 
            render json: @project, status: 201
        else
            render json: {error: @project.errors.full_messages}, status: 500
        end
    end

    def show
        @project = Project.find(params[:id])
        render json: @project
    end

    def update
        @project = Project.find(params[:id])
        @project.update(project_params)
        if @project.save
            render json: @project
        else 
            render json: {error: @project.error.full_messages}
        end
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
        render json: {message: "project deleted"}
    end 

    private 

    def project_params
        params.require(:project).permit(:name, :description, :repo_link, :status)
    end
end
