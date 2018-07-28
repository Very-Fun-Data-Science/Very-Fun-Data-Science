Rails.application.routes.draw do

  root to: 'articles#index'
  get '/articles/:article', to: 'articles#show'
  get '/about' => 'static_pages#about'
end
