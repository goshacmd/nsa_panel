NsaPanel::Engine.routes.draw do
  resources :users do
    resources :data
  end

  root to: 'users#index'
end
