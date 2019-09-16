class Api::V1::TopicsController < ApplicationController
    def index
        @topics = Topic.all 
        render json: @topics
    end

    def create
        @topic = Topic.new(topic_params)
        if @topic.save 
            render json: @topic, status: 201
        else
            render json: {error: @topic.errors.full_messages}, status: 500
        end
    end

    def show
        @topic = Topic.find(params[:id])
        render json: @topic
    end

    def update
        @topic = Topic.find(params[:id])
        @topic.update(topic_params)
        if @topic.save
            render json: @topic
        else 
            render json: {error: @topic.error.full_messages}
        end
    end

    def destroy
        @topic = Topic.find(params[:id])
        @topic.destroy
        render json: {message: "Topic deleted"}
    end 

    private 

    def topic_params
        params.require(:topic).permit(:name)
    end

    
end
