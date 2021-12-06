Rails.application.routes.draw do
  root "dicts#index"
  
  resources :dicts do
    resources :words
  end  
  
end
