Rails.application.routes.draw do
  devise_for :runners
  root 'favours#index'
  get 'favours/new' => 'favours#new'
  post 'favours' => 'favours#create'

  get 'favours/:id/delete' => 'favours#delete'
  get 'home' => 'favours#home'
  get 'favours/:id' => 'favours#show'

  devise_for :juans
   resources :juans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
