Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  resources :users
  resources :items do
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
    resources :images

    collection do
      get 'index_more_new_page'
    end
  end
   
end
