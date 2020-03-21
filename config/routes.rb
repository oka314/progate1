Rails.application.routes.draw do
  root 'home#top'
  resources :home
  resources :posts
end
