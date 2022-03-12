# 読み込んで欲しい順に配置する
#top pageへのルートパスは、root toを用いる
Rails.application.routes.draw do
  root to: 'homes#top'
  get 'books' =>'books#index'
  post 'books'=>'books#create'
  get 'show/:id'=>'books#show', as: 'book'
  get 'books/:id/edit'=>'books#edit', as: 'edit_list'
  patch 'books/:id' => 'books#update', as: 'update_book'
  put 'books/:id' => 'books#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
