Rails.application.routes.draw do

  get 'users/show'
  get 'users/profile'
   patch 'users/updateprofile/:id', to: 'users#updateprofile'
   get 'profile/create/:id', to: 'profiles#new'
  resources :profiles 
  resources :subject_classrooms
  resources :classrooms
  resources :subject_teachers
  resources :teachers
  resources :subjects
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
end

  unauthenticated do
    root 'devise/sessions#new' , as: :unauthenticated_root
end
end

  resources :student_subjects
  resources :students
  resources :subjects 
  resources :enrollments
  resources :users
  get 'home/admin'
  get 'home/about'
  # get 'subjects/new'
  # get 'subjects/about'
  #students is routes that the controller is a same file name and the newa is action/method of the controller
  # get 'students/newa'
  get '/home/section1bsit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	# root'home#index'
end

