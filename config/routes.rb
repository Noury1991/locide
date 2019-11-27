Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root to: "home#index"
  get 'home/indexguest'
  get 'home/searchguest'
  get 'trip/new'
  post 'home/guideprofile'
  get 'home/searchuser'
  post 'home/searchuser'
  get 'trip/show'
  get 'home/guideprofile'
  post '/trip', to: 'trip#create', as: :trips
  post '/home', to: 'home#update', as: :homes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
