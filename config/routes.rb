Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :artists, except: [:destoy]
  resources :genres, except: [:destoy]
  resources :songs, except: [:destoy] 
end
