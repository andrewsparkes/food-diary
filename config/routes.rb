# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html

  resources :consumable_items

  root 'welcome#index'
end
