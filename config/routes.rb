RailsBenchmark::Application.routes.draw do
  namespace :api, :defaults => { :format => 'json' } do
    resources :categories
  end
end
