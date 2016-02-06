Rails.application.routes.draw do
  scope :api do
    resources :projects
  end
  root to: 'projects#index'
end
