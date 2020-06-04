# frozen_string_literal: true

Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  root 'home#top'

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end

  get 'game/:id' => 'folders#game'

  resources :folders do
    resources :posts
    resources :likes, only: %i[create destroy]
  end
end
