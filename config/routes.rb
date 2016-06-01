Rails.application.routes.draw do
  devise_for :users

  root "friends#index"

  # Routes for the Users resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"
  get "/users/my_likes", :controller => "users", :action => "likes"

  # DELETE
  get "/delete_comment/:id", :controller => "users", :action => "destroy"

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

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
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

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
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
