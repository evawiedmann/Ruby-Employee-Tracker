Rails.application.routes.draw do
  root to: 'individuals#index'
  resources :individuals
  resources :projects
  end
