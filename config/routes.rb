Rails.application.routes.draw do
  resources :school_product_commissions
  resources :schools
	root :to => 'students#index'
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
