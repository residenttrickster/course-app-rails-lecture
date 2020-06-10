Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :enrollments, only: [:new, :create, :destroy]
  resources :courses, only: :index


end
