Rails.application.routes.draw do
  get 'home/index'

  post '/write' => "home#write"

  get 'home/update/:post_id' => "home#update"
  post '/real_update/:post_id' => "home#real_update"

  get 'home/update'
  get 'home/list'
  get 'home/destroy/:post_id' => "home#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
