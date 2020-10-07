Rails.application.routes.draw do
  root to: "welcome#index"
  get "/search", to: "search#index"
end
