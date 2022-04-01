Rails.application.routes.draw do
  resources :visitors
  root 'pages#home'

  get 'about', to:'pages#about'
end
