class CandidatesController < ApplicationController

    def index
        @candidate = Candidate.all 
        render json: @candidate
    end

    def create
        @candidate = Candidate.new(candidate_params)

        if @candidate.save
            render json: @candidate, status: :created
        else
            render json: {errors: @candidate.errors.full_messages}
        end

    end

    private

    def candidate_params
        params.require(:candidate).permit(:name, :party, :votes)
    end


end
