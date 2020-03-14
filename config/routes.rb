Rails.application.routes.draw do

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  } 

  root 'home#top'
  resources :users, only: [:show]
  # get 'sessions/new'
  # get 'users/new'
  # resources :folders
  get    'game/:id'  => 'folders#game'

  resources :folders do
    resources :posts
  end 
  # resources :postsoin

  # # resources :user
  
  # post   'login'   => 'sessions#create'
  # delete 'logout'  => 'sessions#destroy'

end