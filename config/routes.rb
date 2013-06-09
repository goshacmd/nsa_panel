NsaPanel::Engine.routes.draw do
  resources :users do
    resources :data
  end

  get '/check' => 'dashboard#law_accordance_check', as: :dashboard_law_accordance_check
  post '/proceed' => 'dashboard#proceed', as: :dashboard_proceed

  root to: 'dashboard#index'
end
