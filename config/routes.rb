Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "quizzes#index"
  post 'check_answer', to: 'quizzes#check_answer'
  get 'get_another_rapper', to: 'quizzes#get_another_rapper'
end
