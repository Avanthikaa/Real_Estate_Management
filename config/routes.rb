Rails.application.routes.draw do
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

  root to: 'users#new'

  # sign up page with form:
  get 'users/new' => 'users#new', as: :new_user

  # create (post) action for when sign up form is submitted:
  post 'users' => 'users#create'

  # log in page with form:
  get '/login'     => 'sessions#new'

  # create (post) action for when log in form is submitted:
  post '/login'    => 'sessions#create'

  # delete action to log out:
  delete '/logout' => 'sessions#destroy'

  get '/realestate' => 'realestate#new', as: :new_realestate

  post '/realestate' =>'realestate#create'

  get '/house' => 'house#new'

  post '/house' => 'house#create'

  get '/house/show' => 'house#show'

  get '/house/:id/interested' => 'house#interest', as: :house_interested

  get '/realestate/show' => 'realestate#show'

  get '/user/:id/edit' => 'users#edit', as: :user_edit

  post '/user/:id/edit' => 'users#update'

  get '/house/:id/edit' => 'house#edit', as: :house_edit

  post '/house/:id/edit' => 'house#update'

  get '/user/menu' => 'users#menu'

  get '/user/show' => 'users#show'

  get '/realestate/:id/edit' => 'realestate#edit', as: :realestate_edit

  post '/realestate/:id/edit' => 'realestate#update'

  get 'inquiry/new' => 'inquiry#new', as: :new_inquiry

  post 'inquiry/new' => 'inquiry#create'

  get 'inquiry/show' => 'inquiry#show'

  get 'inquiry/:id/edit' => 'inquiry#edit'

  post 'inquiry/:id/edit' => 'inquiry#update', as: :inquiry_edit

  get 'inquiry/:id/reply' => 'inquiry#reply', as: :inquiry_reply

  post 'inquiry/:id/reply' => 'inquiry#reply_update'

  get '/users/:id/destroy' => 'users#destroy', as: :users_destroy

  get '/inquiry/:id/destroy' => 'inquiry#destroy', as: :inquiry_destroy

  get '/house/:id/destroy' => 'house#destroy', as: :house_destroy

  get '/realestate/:id/destroy' => 'realestate#destroy', as: :realestate_destroy
end
