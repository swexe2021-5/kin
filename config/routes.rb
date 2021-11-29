Rails.application.routes.draw do
    
    root 'tops#index'
    get 'tops/index2'
    
    get 'users/main'
    post 'users/login'
    get 'users/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
