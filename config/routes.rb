Rails.application.routes.draw do
  resources :machines do 
    get 'create_new_part', on: :collection
  end
  resources :parts
end
