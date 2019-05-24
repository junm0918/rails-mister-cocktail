Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  get    "cocktails",          to: "cocktails#index"
  get    "cocktails/new",      to: "cocktails#new", as: :new_cocktail
  get    "cocktails/:id",      to: "cocktails#show", as: :cocktail
  post   "cocktails",          to: "cocktails#create", as: :cocktails_create
  # NB: The `show` route needs to be *after* `new` route.
  get "cocktails/:cocktail_id/doses", to: "doses#index", as: :doses
  get "cocktails/:cocktail_id/doses/new", to: "doses#new", as: :doses_new
  post "cocktails/:cocktail_id/doses",    to: "doses#create", as: :cocktail_doses
  delete "doses/:id", to: "doses#destroy", as: :dose

  post "cocktails/:cocktail_id/reviews",    to: "reviews#create", as: :reviews_create
end
