class PagesController < ApplicationController
  def home
  end

  def results
    @num_questions = QuestionBank.count
    answers = Answer.all
    @num_correct = 0
    answers.each do |a|
      if a.user
        if a.correct
          @num_correct += 1
        end
      end
    end  
  end
end
