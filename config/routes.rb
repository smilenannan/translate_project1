Rails.application.routes.draw do
  resources :papers, only: :index 

  root to: 'papers#index'

  post 'translate' => 'papers#translate'
end
