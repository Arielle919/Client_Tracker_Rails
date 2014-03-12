Squawker::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks", :registrations => :registrations }
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'squeeks#index'
  resources :squeeks, only: [:index, :create, :destroy] do
    resource :favorite, only: [:create]
    get :autocomplete_user_username, :on => :collection
  end
  get 'users/applicants/index', to: 'applicants#index'
  get 'users/applicants/update', to: 'applicants#update'
  get 'users/applicants/tasks', to: 'applicants#tasks'
  get 'users/applicants/finances', to: 'applicants#finances'
  get 'users/applicants/schedule', to: 'applicants#schedule'
  get 'users/applicants/single', to: 'applicants#single'

  resources :applicants, only: [:index, :create, :destroy, :update, :tasks, :finances, :schedule, :single] do
    get :autocomplete_user_username, :on => :collection
  end
  resources :users, only: [:show]
  resources :relationships, only: [:create]

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
