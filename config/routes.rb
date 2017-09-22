Rails.application.routes.draw do
  devise_for :admins
  root "home#show", as: "home"


  get "/portfolio", to: "portfolio#show", as: 'portfolio'
  get "/resume", to: "resume#show", as: 'resume'

  resources :blog
end
