Rails.application.routes.draw do
  root to: 'landing#index'

  resources :points
  devise_for :users

  get 'user-tools/', to: 'user_tools#index', as: 'user_tools'
  get 'user-tools/:user_id', to: 'user_tools#show', as: 'user_tools_show'
  get 'user-tools/:user_id/edit', to: 'user_tools#edit', as: 'user_tools_edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
