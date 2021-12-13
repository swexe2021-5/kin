Rails.application.routes.draw do
    
    devise_for :users
    root 'tops#index'
<<<<<<< HEAD
    
    get 'searches/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
=======
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
>>>>>>> 9f7bef5dc05155bcd5b79ad5f45f19622c541131
