Rails.application.routes.draw do
  resources :articles do
  	collection do
  		get :ajaxtext
  	end
  resources :comments
end
  root "articles#index"

end
