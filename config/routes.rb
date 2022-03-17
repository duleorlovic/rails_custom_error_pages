Rails.application.routes.draw do
  get 'pages/home'
  post "pages/submit", as: :pages_submit
  get "pages/error"

  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
