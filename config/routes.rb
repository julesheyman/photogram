Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    scope module: 'api/v1', as: 'api' do
      resources :comments

      resources :follow_requests

      resources :likes

      resources :users

      resources :photos

    end
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
