class QuestionsController < ApplicationController
    def show
        if params.require(:id) == "1"
            @question = Question.find(1)
            @choices = @question.choices
        elsif params.require(:id).to_i >= 2 && params.require(:id).to_i <=6
            @question = Question.find(params.require(:id).to_i+14)
            @choices = @question.choices
        elsif params.require(:id).to_i >= 7
            @brands = Choice.find(params.require(:id).to_i-1).brands
            render("brand/show")
        end
    end
end


