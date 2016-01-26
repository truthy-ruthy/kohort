Rails.application.routes.draw do

root to: 'user#homepage'

get 'register' => 'user#homepage'
get 'kohorts' => 'kohort#my_kohorts'
get 'join' => 'kohort#join_kohort'
get 'kohort' => 'kohort#kohort_home'
get 'leave' => 'kohort#leave_kohort'
get 'logout' => 'user#homepage'


  resources :users, :kohorts


end
