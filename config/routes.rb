Rails.application.routes.draw do
  resources :blog_posts
  resources :comments, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
