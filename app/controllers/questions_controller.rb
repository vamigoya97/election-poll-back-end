class QuestionsController < ApplicationController

    def index
        @question = Question.all 
        render json: @question, include: [:candidate_1, :candidate_2]
    end

    def show
        @question = Question.find(params[:id])
        render json: @question, include: [:candidate_1, :candidate_2]
    end

    def create
        @question = Question.new(question_params)

        if @question.save
            render json: @question, status: :created
        else
            render json: {errors: @question.errors.full_messages}
        end

    end

    def update
        @question = Question.find(params[:id])
        @question.update(question_params)
        render json: @question
    end

    private

    def question_params
        params.require(:question).permit(:body, :trump_votes, :biden_votes, :candidate_1_id, :candidate_2_id)
    end
    
end
