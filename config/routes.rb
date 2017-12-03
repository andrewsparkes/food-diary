# frozen_string_literal: true

Rails.application.routes.draw do
  resources :symptoms
  resources :symptom_types
  resources :consumable_item_types
  get 'welcome/index'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html

  resources :consumable_items

  root 'welcome#index'
end
