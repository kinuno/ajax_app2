Rails.application.routes.draw do
  root to:'posts#index'
  post 'posts', to: 'posts#create'
end

# GitHub練習用の記載