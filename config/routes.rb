Rails.application.routes.draw do
  resources :questions
  resources :disciples
  resources :evaluations
  resources :people
  resources :evaluation_responses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
