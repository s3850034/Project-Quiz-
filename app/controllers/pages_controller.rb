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
    @attempt = Attempt.create(user_id: session[:user_id], result: @num_correct, questions: @num_questions)
    @attempt.save
    @attempts = Attempt.all  
  end
end
