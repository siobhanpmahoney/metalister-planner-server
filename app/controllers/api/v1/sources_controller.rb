class Api::V1::SourcesController < ApplicationController
    def index
        @sources = Source.all 
        render json: @sources
    end

    def create
        @source = Source.new(source_params)
        if @source.save 
            render json: @source, status: 201
        else
            render json: {error: @source.errors.full_messages}, status: 500
        end
    end

    def show
        @source = Source.find(params[:id])
        render json: @source
    end

    def update
        @source = Source.find(params[:id])
        @source.update(source_params)
        if @source.save
            render json: @source
        else 
            render json: {error: @source.error.full_messages}
        end
    end

    def destroy
        @source = Source.find(params[:id])
        @source.destroy
        render json: {message: "source deleted"}
    end 

    private 

    def source_params
        params.require(:source).permit(:link, :title)
    end
end
