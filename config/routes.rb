Rails.application.routes.draw do

  root 'mobile_phone#index'


  resources :categories
end
