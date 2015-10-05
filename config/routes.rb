  Rails.application.routes.draw do
  resources :imi_answers, only: [:index, :create, :show]
  resources :referrers, only: [:index, :create, :show]

  #resources :password_resets, only: [:create, :update]

  resources :characterizations, only: [:index, :create, :show]
  #devise_for :users
  #devise_for :users, :controllers => {registrations: 'registrations'}
  devise_for :users, controllers: {passwords: "users/passwords", confirmations: 'users/confirmations'}
  devise_scope :user do
    get '/confirmation-getting-started' => 'registrations#getting_started', as: 'confirmation_getting_started'
  end
  get 'imi', :to => 'imi_answers#index'
  post 'imi', :to => 'imi_answers#create'
  get 'icai', :to => 'characterizations#index'
  post 'icai', :to => 'characterizations#create'
  get 'surveys/download', :to => 'characterizations#download'
  post 'referrers', :to => 'referrers#create'
  #resources :users, only: [:create]
  post 'users/signup', :to => 'users#create'
  delete 'users/delete', :to => 'users#delete'
  post 'session/signin', :to => 'sessions#create'
  get 'users', :to=> 'users#index'

  post 'password/reset', :to => 'password_resets#create'
  put 'password/reset', :to => 'password_resets#update'
  #post "users/recovery_password", :to => 'users#recovery'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'characterizations#index'

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
  #resources :users do
  # resources :characterizations, except: [:destroy]
  #     resource :seller
  #end

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
