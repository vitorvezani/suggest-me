Rails.application.routes.draw do

  #root route
  root 'suggestions#index'

  # Custom Routes

    # Usuarios 
    match '/reset_password', to: 'usuarios#reset_password', via: 'get'
    match '/send_reset_password', to: 'usuarios#send_reset_password', via: 'post'
    match '/confirm_account/:id', to: 'usuarios#confirm_account', via: 'get'
    match '/usuarios/:id/edit_preferences', to: 'usuarios#edit_preferences', via: 'get', as: 'edit_preferences'
    match '/usuarios/:id/update_preferences:id', to: 'usuarios#update_preferences', via: 'patch'
    match '/usuarios/:id/edit_password', to: 'usuarios#edit_password', via: 'get'
    match '/usuarios/:id/update_password', to: 'usuarios#update_password', via: 'patch'
    match '/signup', to: 'usuarios#new', via: 'get'

    # Sessions
    match '/signin',  to: 'sessions#new', via: 'get'
    match '/signout', to: 'sessions#destroy', via: 'delete'

    # Itens
    match '/collaborative_recommendation', to: 'itens#collaborative_recommendation', via: 'get'
    match '/refresh_item_img/:id', to: 'itens#refresh_item_img', via: 'get'
    match '/content_recommendation/:id', to: 'itens#content_recommendation', via: 'get'

    # Avaliacoes
    match '/avaliacoes', to: 'avaliacoes#create_update', via: 'post'

    # Generalizacoes
    match '/generalizacoes/destroy_all', to: 'generalizacoes#destroy_all', via: 'post'

    # Facebook Auth
    match 'auth/:provider/callback', to: 'sessions#create_facebook', via: 'get'
    match 'auth/failure', to: redirect('/'), via: 'get'

    # Paginas Estáticas
    match '/sobre', to: 'suggestions#sobre', via: 'get'
    match '/privacidade', to: 'suggestions#privacidade', via: 'get'
    match '/termos', to: 'suggestions#termos', via: 'get'
    match '/contato', to: 'suggestions#contato', via: 'get'
    match '/suggestions/enviar_contato', to: 'suggestions#enviar_contato', via: 'post'

  # RESTful Resources

    resources :relacoes, only: [:create, :destroy]

    resources :generos, :categorias, :generalizacoes, :itens, :usuarios, :flags

    resources :avaliacoes, only: :update

    resources :comentarios, only: [:create, :destroy, :edit, :update, :show]

    resources :sessions, only: [:new, :create, :destroy]

    resources :usuarios do
      # usuarios/1/seguindo
      # usuarios/1/seguindo
      member do # poderia ser collection
        get :seguindo, :seguidores
      end
    end

  #default

  match ':controller(/:action(/:id(.:format)))', via: 'get'
  
  #get 'suggestions/index'

  # match "demo/index",
  #    :to => "demo#index",
  #    :via => :get

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'

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
