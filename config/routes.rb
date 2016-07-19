Rails.application.routes.draw do
  root 'application#welcome'
  resources :posts
  resources :inquiries, only: [:new, :create]
  match '*any' => 'application#options', :via => [:options]
end