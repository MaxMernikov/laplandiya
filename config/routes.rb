Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  devise_for :admins, path: 'admin',
    controllers: { sessions: "admin/sessions" },
    skip: [ :registration ]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'

  namespace :pages, path: '' do
    get :delivery
    get :contacts
  end

  resources :opinions, only: [:index]
  resources :feedbacks, only: [:create]
  resources :kits, only: [:show]
  resources :orders, only: [:create]

  namespace 'admin' do
    root 'dashboards#index'
    resources :compositions, except: [:new, :create, :destroy]
    resources :manufacturers do
      resources :sweets
    end
    resources :weights
    resources :packings
    resources :sweets_categories
    resources :custom_fields, except: [:destroy]
    resources :kits, only: [:index, :edit, :update] do
      post :change_cost, on: :collection
    end
    resources :opinions, except: [:show]
    resources :feedbacks, only: [:index, :destroy]
    resources :orders, only: [:index]
  end

  post '/init' => 'conf#init'# erase_me

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
