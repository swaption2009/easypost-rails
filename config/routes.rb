Rails.application.routes.draw do
  resources :shipments do
    member do
      get 'shipping_label'
    end
  end

  root to: 'shipments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
