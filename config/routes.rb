Rails.application.routes.draw do

  root "welcome#index"

  get "/login" => "sessions#new"

  resource  :session, only: [:create, :destroy]

  resources :users do
    resources :items
  end

  resources :users do
    resources :outfits, only: [:index, :new, :create, :destroy, :show] do
      collection do
        match 'generate', :via => [:get, :post]
      end
    end
  end

  get 'users/:id/dashboard' => 'welcome#dashboard', as: :dashboard

  get 'users/:user_id/outfits/generate' => 'outfits#generate', as: :generate

  get '/about' => 'welcome#about'

end
