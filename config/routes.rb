Freeseoreport::Application.routes.draw do
  constraints(AuthConstraint.new) do
    root :to => 'users#home', as: :authenticated_root
  end

  root 'static_pages#landing'
end
