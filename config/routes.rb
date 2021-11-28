Rails.application.routes.draw do
  get 'students/index'
  get 'students/show'
  get 'students/new'
  get 'students/edit'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students
  root 'students#index'
end
