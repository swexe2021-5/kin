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
    
    resources :likes, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
