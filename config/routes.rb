# 読み込んで欲しい順に配置する
#top pageへのルートパスは、root toを用いる
Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books
end
