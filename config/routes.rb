RailsBlog::Application.routes.draw do

  get 'comment/create'

  resources :users
  resources :tags
  resources :posts do
    resources :comments
  end

end
