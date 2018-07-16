Rails.application.routes.draw do
  resources :books do
    resource :prologue
  end
end
