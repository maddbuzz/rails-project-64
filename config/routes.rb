# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root 'home#index'

  resources :posts, only: %i[show new create] do
    scope module: :posts do
      # resources :likes, only: %i[create destroy]
      resources :comments, only: :create
    end
  end
end
