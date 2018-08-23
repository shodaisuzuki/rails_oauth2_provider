Rails.application.routes.draw do

  use_doorkeeper
  devise_for :users

  root 'doorkeeper/applications#index'

  defaults format: :json do
    namespace :api do
      post 'login', to: 'credentials#login'
    end
  end 
end
