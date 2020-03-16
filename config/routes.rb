Rails.application.routes.draw do
  resources :comments, only: [:index, :create]
  resources :images, only: [:show]

  
  patch '/images/:id/likes', to: 'images#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
