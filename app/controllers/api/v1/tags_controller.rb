class Api::V1::TagsController < ApplicationController
    def index
        @tags = Tag.all 
        render json: @tags
    end

    def create
        @tag = Tag.new(tag_params)
        if @tag.save 
            render json: @tag, status: 201
        else
            render json: {error: @tag.errors.full_messages}, status: 500
        end
    end

    def show
        @tag = Tag.find(params[:id])
        render json: @tag
    end

    def update
        @tag = Tag.find(params[:id])
        @tag.update(tag_params)
        if @tag.save
            render json: @tag
        else 
            render json: {error: @tag.error.full_messages}
        end
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        render json: {message: "tag deleted"}
    end 

    private 

    def tag_params
        params.require(:tag).permit(:key, :value)
    end
end
