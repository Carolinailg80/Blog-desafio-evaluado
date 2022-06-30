
Rails.application.routes.draw do
  root 'posts#index'
  get 'posts/new'
  post 'posts/new', to: 'posts#create', as: 'create_post'
end
