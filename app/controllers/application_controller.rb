class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  before_action :create_questions

  def create_questions
    if @data == nil
      file = File.read('quiz.json')
      @data = JSON.parse(file)
    end
  end

  def dynamic_api_questions(cat)
      response = RestClient.get "https://quizapi.io/api/v1/questions?apiKey=RKmazomP2gzKYq0kBHvvXMqzRcMy2VMicCnhOOzN&category=#{cat}" 
      return JSON.parse(response)
  end

  def current_user
    if session[:user_id] == nil
      @user = User.create
      session[:user_id] = @user.id
    end
  end
end
