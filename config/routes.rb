Rails.application.routes.draw do

  get 'sessions/new'

root to: 'user#new'

# get 'register' => 'user#homepage'
get 'kohorts' => 'kohort#my_kohorts'
get 'join' => 'kohort#join_kohort'
post 'join' => 'kohort#join_kohort'
get 'kohort' => 'kohort#kohort_home'
get 'leave' => 'kohort#leave_kohort'
get 'user' => 'user#homepage'
post 'users' => 'user#create'
get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'
# get '/force' => 'user#force'



  resources :users, :kohorts, :sessions


end

  # get    'help'    => 'static_pages#help'
  # get    'about'   => 'static_pages#about'
  # get    'contact' => 'static_pages#contact'
