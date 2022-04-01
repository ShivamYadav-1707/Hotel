Rails.application.routes.draw do
  resources :visitors ,except: [:destroy]
  get 'delete' ,to: "visitors#destroy", as: "delete"
  root 'pages#home'
  get 'about', to:'pages#about'
end
