Rails.application.routes.draw do
  resources :uploads do
    collection { post :import }
  end

  root to: "uploads#index"
end
