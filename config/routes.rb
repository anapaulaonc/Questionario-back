Rails.application.routes.draw do
  resources :boolean_answers
  resources :alternative_answers
  resources :discursive_answers
  resources :discursive_questions
  resources :alternative_questions
  resources :boolean_questions
  resources :surveys
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  post '/auth/login', to: 'authentication#login'
  post "login/forgot_password", to: "users#forgot"
  post "login/reset_password", to: "users#reset"
  
  
end
