Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    mount VandalUi::Engine, at: '/vandal'
    # your routes go here
  end
  ActiveAdmin.routes(self)
  root :to => "photos#index"
  resources :comments
  resources :follow_requests
  resources :likes
  resources :users
  resources :photos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
