Rails.application.routes.draw do
    
  
    root 'tops#index'
    get 'tops/index2'
    
    get 'users/main'
    post 'users/login'
    get 'users/logout'
    
    get 'posts/new' => 'posts#new'
    get 'posts/index3' => 'posts#index3'
    get 'posts/:id' => 'posts#show'
    post 'posts' => 'posts#create'
    
    get '/login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    
    resources :posts do
        resources :likes, only: [:create, :destroy]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
