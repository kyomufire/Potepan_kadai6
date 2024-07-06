Rails.application.routes.draw do

  root  'users#index'  
  
  get 'plans/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :plans

end
