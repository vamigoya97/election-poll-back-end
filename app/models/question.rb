class Question < ApplicationRecord
    has_many :responses
    belongs_to :candidate_1, class_name: "Candidate"
    belongs_to :candidate_2, class_name: "Candidate"
end
