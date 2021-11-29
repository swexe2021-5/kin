Rails.application.routes.draw do
    resources :tops
    root 'tops#index'
    
    get 'searches/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
