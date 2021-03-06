Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'
  root 'home#index'

  get 'home/booth'

  get 'home/dbupload'
  post 'home/filesave'
  post 'home/jujeomsave'
  post 'home/backsave'
  post 'home/performdaesave'
  post 'home/performjungsave'
  get 'home/booth2'
  get 'home/juju'
  get 'home/juju2'
  get 'home/partner'
  get 'home/jujeomlike/:id' => 'home#jujeomlike'
  get 'home/backback'
  get 'home/performdae/:id'=> 'home#performdae'
  get 'home/performjung/:id'=> 'home#performjung'
  get 'home/performdaelike/:id' => 'home#performdaelike'
  get 'home/performjunglike/:id' => 'home#performjunglike'
  get 'home/ourevent'
  get 'home/performance'
  get 'home/example'
  get 'home/booth_spec/:id' => 'home#booth_spec'
  
  get 'home/event'
  get 'home/event2'
  get '/csv' => 'home#csv'
  get 'home/event_spec/:id' => 'home#event_spec'
  
  
  
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
