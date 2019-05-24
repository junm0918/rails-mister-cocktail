Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    "cocktails",          to: "cocktails#index"
  get    "cocktails/new",      to: "cocktails#new"
  get    "cocktails/:id",      to: "cocktails#show", as: :cocktail
  post   "cocktails",          to: "cocktails#create", as: :cocktails_create
  # NB: The `show` route needs to be *after* `new` route.
  get "cocktails/:cocktail_id/doses", to: "doses#index", as: :doses
  get "cocktails/:cocktail_id/doses/new", to: "doses#new", as: :doses_new
  post "cocktails/:cocktail_id/doses",    to: "doses#create", as: :doses_create
  delete "doses/:id", to: "doses#destroy", as: :doses_destroy

  post "cocktails/:cocktail_id/reviews",    to: "reviews#create", as: :reviews_create
end
