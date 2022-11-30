Rails.application.routes.draw do
  root 'mobile_phone#index'
  resources :mobile_phone, only: %i[index show] do
    collection do
      get "search"
    end
  end

  resources :categories
end
