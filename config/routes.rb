Rails.application.routes.draw do
  resources :student_details
  # get 'admin/index'

  # get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users

  get 'admin'=> 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  root 'pages#home'
  get 'home' => 'pages#home' , as: 'home'
  get 'about_us' => 'pages#about_us' , as: 'about_us'
  get 'school_glance' => 'pages#school_glance' , as: 'school_glance'
  get 'school_prayer' => 'pages#school_prayer' , as: 'school_prayer'
  get 'school_anthem' => 'pages#school_anthem' , as: 'school_anthem'
  get '/admission' => 'pages#admission' , as: 'admission'
  get 'uniform' => 'pages#uniform' , as: 'uniform'
  get 'parents_recomandation' => 'pages#parents_recomandation' , as: 'parents_recomandation'
  get 'fee_stucture' => 'pages#fee_stucture' , as: 'fee_stucture'
  get 'teaching_staff' => 'pages#teaching_staff' , as: 'teaching_staff'
  get 'school' => 'pages#school' , as: 'school'
  get 'school_function' => 'pages#school_function' , as: 'school_function'
   get 'management' => 'pages#management' , as: 'management'
  get '26thJan' => 'pages#26thJan' , as: 'republic_day'
  get 'feveral_party' => 'pages#feveral_party' , as: 'feveral_party'
  get 'contact_us' => 'pages#contact_us' , as: 'contact_us'
  get 'gallery' , to: 'pages#gallery' , as:'gallery'
  get 'login' => 'sessions#new' , as: 'login_session'
  get 'logout' => 'sessions#destroy' , as: 'logout_session'
  get 'student_details' => 'student_details#new' 
  get 'tc' => 'pages#tc' , as: 'tc'
  get 'pages/viewtc/:id', to: 'pages#viewtc', as: 'viewtc'

 

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
