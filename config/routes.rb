Freeseoreport::Application.routes.draw do
  constraints(AuthConstraint.new) do
    root :to => 'users#home', as: :authenticated_root
  end
  root 'static_pages#coming'
  
  get '/landing', to: 'static_pages#landing'
  get '/style', to: 'static_pages#style'

  resources :users, only: [:new, :create, :edit, :update] do
  end
  resources :sessions, only: [:new, :create, :destroy]
end
