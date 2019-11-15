Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: RootApp.new

  get '/articles', to: Articles::IndexApp.new, as: :articles
end
