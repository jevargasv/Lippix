Rails.application.routes.draw do
  root 'page#home'
  get '/page/about_us', to: 'page#about_us'
  get '/page/contact_us', to: 'page#contact_us'
  mount Commontator::Engine => '/commontator'
  post '/search', to: 'page#search', as: 'search'
  post 'order_complete' => 'carts#order_complete'
  devise_for :users
  resources :listings
  resources :carts
  get '/:account', to: 'account#index', as: :user
  get '/:account/new', to: 'listings#new'
  post '/:account/new', to: 'listings#create'
end
