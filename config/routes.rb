Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  root "kindergartens#index"

  resources :kindergartens do
    collection do
      match 'search' => 'kindergartens#search', via: [:get, :post], as: :search
    end
  end
 
  resources :cities
  resources :pets
end


