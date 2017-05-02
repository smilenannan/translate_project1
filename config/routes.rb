Rails.application.routes.draw do
  resources :papers, only: :index 

  root to: 'papers#index'

  post 'translate' => 'papers#translate'
  post 'translate_sentence' => 'papers#translate_sentence'
  post 'look_up_word' => 'papers#look_up_word'
end
