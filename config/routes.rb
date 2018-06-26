Rails.application.routes.draw do
  root 'articles#index'
  get 'articles/index', to: 'articles#index'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/about' => 'static_pages#about'

  get '/admin' => 'admin#index'

  resources :articles do
    resources :comments
    # resources :tags
  end

  get 'tags/:tag', to: 'articles#index', as: :tag
  resources :articles
  root to: 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
