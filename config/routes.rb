# frozen_string_literal: true

Rails.application.routes.draw do
  root 'chatroom#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
