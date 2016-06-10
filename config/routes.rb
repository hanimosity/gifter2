Rails.application.routes.draw do

  devise_for :users
  
  get "/", :controller => "users", :action => "mywall"
  # Routes for the Friends_holiday resource:
  # CREATE
  get "/friends_holidays/new", :controller => "friends_holidays", :action => "new"
  post "/create_friends_holiday", :controller => "friends_holidays", :action => "create"

  # READ
  get "/friends_holidays", :controller => "friends_holidays", :action => "index"
  get "/friends_holidays/:id", :controller => "friends_holidays", :action => "show"

  # UPDATE
  get "/friends_holidays/:id/edit", :controller => "friends_holidays", :action => "edit"
  post "/update_friends_holiday/:id", :controller => "friends_holidays", :action => "update"

  # DELETE
  get "/delete_friends_holiday/:id", :controller => "friends_holidays", :action => "destroy"
  #------------------------------

  # Routes for the Important_date resource:
  # CREATE
  get "/important_dates/new", :controller => "important_dates", :action => "new"
  post "/create_important_date", :controller => "important_dates", :action => "create"

  # READ
  get "/important_dates", :controller => "important_dates", :action => "index"
  get "/important_dates/:id", :controller => "important_dates", :action => "show"

  # UPDATE
  get "/important_dates/:id/edit", :controller => "important_dates", :action => "edit"
  post "/update_important_date/:id", :controller => "important_dates", :action => "update"

  # DELETE
  get "/delete_important_date/:id", :controller => "important_dates", :action => "destroy"
  #------------------------------

  # Routes for the Holiday resource:
  # CREATE
  get "/holidays/new", :controller => "holidays", :action => "new"
  post "/create_holiday", :controller => "holidays", :action => "create"

  # READ
  get "/holidays", :controller => "holidays", :action => "index"
  get "/holidays/:id", :controller => "holidays", :action => "show"

  # UPDATE
  get "/holidays/:id/edit", :controller => "holidays", :action => "edit"
  post "/update_holiday/:id", :controller => "holidays", :action => "update"

  # DELETE
  get "/delete_holiday/:id", :controller => "holidays", :action => "destroy"
  #------------------------------

  # Routes for the Friend resource:
  # CREATE
  get "/friends/new", :controller => "friends", :action => "new"
  post "/create_friend", :controller => "friends", :action => "create"

  # READ
  get "/friends", :controller => "friends", :action => "index"
  get "/friends/:id", :controller => "friends", :action => "show"

  # UPDATE
  get "/friends/:id/edit", :controller => "friends", :action => "edit"
  post "/update_friend/:id", :controller => "friends", :action => "update"

  # DELETE
  get "/delete_friend/:id", :controller => "friends", :action => "destroy"
  #------------------------------

  # Routes for the Gift resource:
  # CREATE
  get "/gifts/new", :controller => "gifts", :action => "new"
  post "/create_gift", :controller => "gifts", :action => "create"

  # READ
  get "/gifts", :controller => "gifts", :action => "index"
  get "/gifts/:id", :controller => "gifts", :action => "show"

  # UPDATE
  get "/gifts/:id/edit", :controller => "gifts", :action => "edit"
  post "/update_gift/:id", :controller => "gifts", :action => "update"

  # DELETE
  get "/delete_gift/:id", :controller => "gifts", :action => "destroy"
  #------------------------------

  # Routes for the Friends_date resource:
  # CREATE
  get "/friends_dates/new", :controller => "friends_dates", :action => "new"
  post "/create_friends_date", :controller => "friends_dates", :action => "create"

  # READ
  get "/friends_dates", :controller => "friends_dates", :action => "index"
  get "/friends_dates/:id", :controller => "friends_dates", :action => "show"

  # UPDATE
  get "/friends_dates/:id/edit", :controller => "friends_dates", :action => "edit"
  post "/update_friends_date/:id", :controller => "friends_dates", :action => "update"

  # DELETE
  get "/delete_friends_date/:id", :controller => "friends_dates", :action => "destroy"
  #------------------------------


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
