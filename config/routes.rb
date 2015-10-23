Rails.application.routes.draw do
  
  resources :pins do
    resource :like , module: :pins
  end

  devise_for :users
  
  root "pins#index"
end
