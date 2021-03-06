Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :slides do
      collection do
        post :update_positions
      end
    end

    resources :slide_locations
  end

  namespace :api, defaults: { format: 'json' } do
    namespace :v2 do
      namespace :storefront do
        resources :slides, only: [:index, :show]
        resources :slide_locations, only: [:index, :show]
      end
    end
  end
end
