class QuizzesController < ApplicationController
    
    def create
     if QuestionBank.count > 0
        QuestionBank.delete_all
     end
     if Answer.count > 0
        Answer.delete_all
     end
     if Quiz.count > 0
        Quiz.delete_all
     end
     
     new_data = []
     if dynamic_api_questions("Linux").length > 0
        ultimate_data = []
        linux_data = []
        devops_data = []
        docker_data = []
        code_data = []

        if params[:linux_value] == "1"
            linux_data = dynamic_api_questions('Linux')
        end
        if params[:devops_value] == "1"
            devops_data = dynamic_api_questions('DevOps')
        end
        if params[:docker_value] == "1"
            docker_data = dynamic_api_questions('Docker')
        end
        if params[:code_value] == "1"
            code_data = dynamic_api_questions('Code')
        end

        ultimate_data.concat(linux_data).concat(devops_data).concat(docker_data).concat(code_data)
        if !ultimate_data.empty?
            new_data = ultimate_data
        else
            data = []
            new_data = data.concat(dynamic_api_questions('Linux')).concat(dynamic_api_questions('DevOps')).concat(dynamic_api_questions('Docker')).concat(dynamic_api_questions('Code'))
        end  
     else
        new_data = @data
     end
     

     @current_quiz = Quiz.new(user_id: session[:user_id])
     num_questions = 0
     if params[:question_amount] != ""
        num_questions = params[:question_amount].to_i
     else
        num_questions = 4
     end
     @current_quiz.save
     already_added = []
     new_question = 0
     (1..num_questions).each do 
        new_question = rand(new_data.length-1)
        if !already_added.include?(new_question)
            q = new_data[new_question]
            already_added << new_question
            adding_question = QuestionBank.create({quiz_id: @current_quiz.id,
            json_id: q["id"], question: q["question"], category:
            q["category"], difficulty: q["difficulty"], done: false,
            multiple_correct_answers: q["multiple_correct_answers"] ==
            "true" ? true : false})
            q["answers"].each do |k,v|
                Answer.create(question_bank_id: adding_question.id, answer: v, user: false, correct: q["correct_answers"]["#{k}_correct"])
            end
        else
            redo
        end
    end

     redirect_to question_path(QuestionBank.find_by(quiz_id: @current_quiz.id).id)
    end

    def next
        @current_answer = Answer.find(params[:user_answer])
        @current_answer.user = true
        @current_answer.save
        @finished_question = QuestionBank.find_by(id: @current_answer.question_bank_id)
        @finished_question.done = true
        @finished_question.save
        questions = QuestionBank.all()
        questions.each do |q|
            if !q.done
                redirect_to question_path(q.id, params[:quiz_id])
                return
            end
        end

        redirect_to pages_results_path
    end

    def reload
        answers= Answer.all()
        answers.each do |a|
            if a.user
                a.user = false
                a.save
            end
        end
        questions = QuestionBank.all()
        questions.each do |q|
            if q.done
                q.done = false
                q.save
            end
        end
        current_quiz = Quiz.find_by(user_id: session[:user_id])
        redirect_to question_path(QuestionBank.find_by(quiz_id: current_quiz.id).id)
    end


end
