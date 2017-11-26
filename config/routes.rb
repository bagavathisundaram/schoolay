Rails.application.routes.draw do
  resources :anonymous_users
  resources :school_product_commissions
  resources :schools do
  	get :info, :on => :member
  end
	root :to => 'students#index'
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
