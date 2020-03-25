# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'home/index'

  resources :recipes do
    resources :ingredients
  end

  root 'home#index'
end
