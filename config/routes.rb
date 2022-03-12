Rails.application.routes.draw do
  get 'top' => 'homes#top'
  get 'index' =>'books#index'
  post 'books'=>'books#create'
  get 'show/:id'=>'books#show', as: 'book'
  get 'books/:id/edit'=>'books#edit', as: 'edit_list'
  patch 'books/:id' => 'books#update', as: 'update_book'
  put 'books/:id' => 'books#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
