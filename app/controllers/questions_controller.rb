class QuestionsController < ApplicationController
    def show
        @question = Question.find(1)
        @choices = @question.choices
    end
end
