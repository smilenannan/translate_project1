Rails.application.routes.draw do
  resources :papers, only: :index 

  root to: 'papers#index'

  post 'translate' => 'papers#translate'
  post 'translate_sentence' => 'papers#translate_sentence'
  post 'start_translate' => 'papers#start_translate'
end
