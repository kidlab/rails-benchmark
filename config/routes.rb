RailsBenchmark::Application.routes.draw do
  root :to => "home#index"
  
  namespace :api, :defaults => { :format => 'json' } do
    resources :categories
  end
end
