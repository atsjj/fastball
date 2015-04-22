Rails.application.routes.draw do
  api_version(:module => "V1", :path => {:value => "v1"}, :defaults => {:format => :json}, :default => true) do
    resources :pitcher_stats, only: [:index, :show]
    resources :pitchers, only: [:index, :show]
    resources :teams, only: [:index, :show]
  end
end
