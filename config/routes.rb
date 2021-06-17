Rails.application.routes.draw do
  root 'pages#home'
  
  get 'pages/home'
  post 'quizzes/next'
  # resources :quizzes, only: [:create]
  post 'quizzes/create'
  resources :questions, only: [:show]
  post 'quizzes/reload'
  get 'pages/results'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
