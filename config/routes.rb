Rails.application.routes.draw do
  resources :cocktails do
    resources :doses
  end
# get '/doses/:id', to: 'doses#destroy', as: 'delete_dose'
root to: 'cocktails#index'
end

