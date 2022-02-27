Rails.application.routes.draw do
  root to: "tasks#due_today", as: 'due_today'
  resources :categories do
    resources :tasks
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end