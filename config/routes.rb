Rails.application.routes.draw do
  resources :employees do
    collection do
      get :find_by_rfc
    end
  end
  resources :employments
end
