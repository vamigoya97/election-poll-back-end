class ResponsesController < ApplicationController

    def index
        @response = Response.all 
        render json: @response, include: [:question, :user]
    end

    def show
        @response = Response.find(params[:id])
        render json: @response, include: [:question, :user]
    end 

end
