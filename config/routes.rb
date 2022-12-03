Rails.application.routes.draw do
  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'product/index'
  get 'product/show'
  get 'categories/index'
  get 'categories/show'


  root 'mobile_phone#index'
  get 'mobile_phone/categories/:id', to: 'categories#show'
  resources :mobile_phone, only: %i[index show] do
    collection do
      get "search"
    end
  end
  resources :categories
  resources :cart, only:[:create, :destroy]
end
