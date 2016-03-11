Rails.application.routes.draw do
  resources :blogs do
    resources :posts do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root to: 'blogs#index'
end
