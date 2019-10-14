Rails.application.routes.draw do

root 'abouts#index'

resources :reviews
end
