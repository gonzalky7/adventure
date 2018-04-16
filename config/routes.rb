Rails.application.routes.draw do
  resources :point_of_interests
  resources :locations

  get "locations" => "locations#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
