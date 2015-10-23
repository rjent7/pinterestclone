Rails.application.routes.draw do
  
  resources :pins do
    resource :like , module: :pins
  end

  devise_for :users, :controllers => { 
      registrations: 'registrations' 
    } 
  
  root "pins#index"
end
