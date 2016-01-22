Rails.application.routes.draw do

root to: 'user#login'

get 'register' => 'user#register'
get 'my_kohorts' => 'kohort#index'

  resources :users, :kohorts


end
