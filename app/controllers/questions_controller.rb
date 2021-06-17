class QuestionsController < ApplicationController
    def show
       @present_question = QuestionBank.find_by(id: params[:id])
       @answers = Answer.where(question_bank_id: @present_question.id)
    end
end
