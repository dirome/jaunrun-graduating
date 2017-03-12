Rails.application.routes.draw do
  
  get 'posts/:id/delete' => 'posts#delete'
  get 'posts/cooking' => 'posts#cooking'

  root 'posts#index'
  resources :posts do
    resources :comments
  end
  #do
  #	resources :comments
  #end
  resources :comments
  get 'post/:id/edit' => 'posts#edit'
  patch 'posts/:id/edit' => 'posts#update'

  #get 'posts/new' => 'posts#new'
  #post 'posts/index' => 'posts#create'

  devise_for :runners
  devise_for :juans, :controllers => { registrations: 'registrations' }
  get 'juans/profile'
  get 'juans/:id' => 'juans#profile'
  post 'juans' => 'juans#create'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
