Rails.application.routes.draw do
  get 'pages/batman'
  get 'pages/superman'
  root 'pages#batmanvssuperman'
  post 'pages/votos_batman'
  post 'pages/votos_superman'
  get 'pages/batmanvssuperman'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
