Rails.application.routes.draw do
  root 'welcome#index'
  resources :articles
  resources :one_plus
  resources :apple
  resources :samsung
end
