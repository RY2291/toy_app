Rails.application.routes.draw do
  resources :m_icroposts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#hello'
end
