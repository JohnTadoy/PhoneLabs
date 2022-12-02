Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  root 'mobile_phone#index'
  resources :mobile_phone, only: %i[index show] do
    collection do
      get "search"
    end
  end
  resources :categories
  resources :cart, only:[:create, :destroy]
end
