Rails.application.routes.draw do
  get 'users/index'
  root 'home#top'
  resources :home
  resources :posts
end
