Rails.application.routes.draw do
  root 'welcome#index'
  resources :articles
  resources :one_plus ,only: %i[index show]
  resources :apple
  resources :samsung
  resources :specifications
end
