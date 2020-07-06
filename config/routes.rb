Rails.application.routes.draw do
  devise_for :users
  root to: "records#index"
  resources :records do
    collection do
      get "landing"
      get "graph"
    end
  end
end
