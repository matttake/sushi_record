Rails.application.routes.draw do
  resource :scores
  root to: "scores#index"

end
