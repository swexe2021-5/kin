Rails.application.routes.draw do
    
  
    root 'tops#index'
    get 'tops/index2'
    
    #get 'users/main'
    #post 'users/login'
    #get 'users/logout'
    get 'signup' => 'users#new'
    post 'signup' => 'users#create'
    get 'users/:id' => 'users#show'
    resources :users, only: [:create]
    
    get 'posts/new' => 'posts#new'
    get 'posts/index3' => 'posts#index3'
    get 'posts/:id' => 'posts#show'
    post 'posts' => 'posts#create'
    resources :posts do
        resources :likes, only: [:create, :destroy]
    end
    
    resource :sessions, only: [:new, :create, :destroy]
    get '/login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    
    get 'corporate_signup' => 'corporates#new'
    post 'corporate_signup' => 'corporates#create'
    resources :corporates, only: [:create]
    
    get 'corporate_login' => 'corporate_users#new'
    get 'corporate_user/:id' => 'corporate_users#show'
    post 'corporate_login' => 'corporate_users#create'
    delete 'corporate_logout' => 'corporate_users#destroy'
end