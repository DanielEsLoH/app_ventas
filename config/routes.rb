Rails.application.routes.draw do
  namespace :authentication, path: '', as: '' do
    resources :users, only: %i[new create], path: '/register', path_names: { new: '/'}
    resources :sessions, only: %i[new create destroy], path: '/login', path_names: { new: '/'}
  end
  resources :categories, except: :show
  resources :products, path: '/'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end