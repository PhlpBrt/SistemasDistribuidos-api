Rails.application.routes.draw do
  resources :generos
  resources :autors
  resources :enderecos
  resources :clientes
  resources :livros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
