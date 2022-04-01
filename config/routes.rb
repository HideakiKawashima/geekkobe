Rails.application.routes.draw do
  resources :users
  devise_for :users
  # get 'students' => 'students#index'
  # get 'students/:id' => 'students#show', as: 'student'
  # get 'students/new' => 'students#new'
  # patch 'students/:id' => 'students#update'
  # delete 'students/:id' => 'students#destroy'
  # get 'students/:id/edit' => 'students#edit', as:'edit_student'
  # post 'students' => 'students#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students
  root 'students#index'
end