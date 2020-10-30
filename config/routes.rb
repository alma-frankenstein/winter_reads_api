Rails.application.routes.draw do
  root "books#index"
  resources :books
  get '/random' => 'books#random'
  get '/paginate' => 'books#paginate'
  get '/titles' => 'books#titles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
