Rails.application.routes.draw do
  root 'articles#index'
  # get '/articles', to: 'articles#index'  ----> puedo volver a agregar esta ruta
  # get '/articles/:id', to: 'articles#show'
  resources :articles do
    resources :comments, only: %i[create destroy]
  end
end 