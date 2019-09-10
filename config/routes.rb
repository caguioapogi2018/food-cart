Rails.application.routes.draw do
  devise_for :users

  root to: "foods#index"
  resources :foods
  resources :favs,except:[:show]
  #get "favs/:id", to: "favs#add_favorites"
  get "add_favorites/:id", to: "favs#add_favorites", as: 'add_fav'
  resources :users

end