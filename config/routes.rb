Rails.application.routes.draw do
  
  resources :categories
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :confirmations => "users/confirmations",

    :sessions => 'users/sessions'   
  }  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    

  # devise_scope :user do
  #   get "user/:id", :to => "users/registrations#detail"
  #   get "signup", :to => "users/registrations#new"
  #   get "login", :to => "users/sessions#new"
  #   get "logout", :to => "users/sessions#destroy"
  # end
end
