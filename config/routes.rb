Rails.application.routes.draw do
  as :user do
    patch '/users/confirmation' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end
  devise_for :users, :controllers => { :confirmations => "confirmations" }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get :test_rules_engine, to: "game_rules#test_rules_engine", as: :test_rules_engine

  resources :games do
    resources :game_rules
    resources :numeric_attributes, controller: 'game_attributes'
    resources :descriptive_attributes, controller: 'game_attributes'
    resources :multi_attributes, controller: 'game_attributes'
    resources :characters, controller: "games/characters"
    resources :attribute_groups do
      resources :numeric_attributes, controller: 'game_attributes'
      resources :descriptive_attributes, controller: 'game_attributes'
      resources :multi_attributes, controller: 'game_attributes'
      resources :game_attributes
    end
    resources :game_attributes do
      resources :numeric_attributes, controller: 'game_attributes'
      resources :descriptive_attributes, controller: 'game_attributes'
      resources :multi_attributes, controller: 'game_attributes'
      resources :game_attributes
    end
  end

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
