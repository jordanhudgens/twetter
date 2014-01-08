Twetter::Application.routes.draw do
  # get "profile/index"
  get "/:username", to: 'profile#index', as: 'profile'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  authenticated :user do
    resources :follows, :except => [:new, :edit, :show, :update], :path => "f/follows"
    resources :twets, :except => [:new, :edit, :show, :update], :path => "feed/twets"
    resources :retwets, :only => [:create]
    root :to => 'follows#index', :as => :user_root
  end

  # You can have the root of your site routed with "root"
  root :to => 'home#index'

end
