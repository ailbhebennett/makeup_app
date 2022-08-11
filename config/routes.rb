Rails.application.routes.draw do
  resources :makeups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: redirect('makeups')

end
