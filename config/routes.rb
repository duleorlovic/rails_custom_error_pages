Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/unprocessable_entity'
  get 'errors/internal_server_error'
  match "/404", to: "errors#not_found", via: :all
  match "/422", to: "errors#unprocessable_entity", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  get 'pages/home'
  post "pages/submit", as: :pages_submit
  get "pages/error"

  root "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
