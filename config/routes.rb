# frozen_string_literal: true

Rails.application.routes.draw do
  resources :animals

  root to: 'animals#index'
end
