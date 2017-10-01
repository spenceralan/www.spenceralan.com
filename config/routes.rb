Rails.application.routes.draw do
  devise_for :admins
  resources :posts, :projects

  root "home#show", as: "home"

  get "/resume", to: "resume#show", as: 'resume'
  get "/blog", to: "posts#index", as: 'blog'
  get "/portfolio", to: "projects#index", as: 'portfolio'
end
