Rails.application.routes.draw do
  get 'home/top'
  devise_for :users
  
  resources :post_images, only: [:new, :index, :show]
  
  root to:'homes#top'
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'homes/about' => 'homes#about', as: 'about'
end
