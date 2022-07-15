Rails.application.routes.draw do
  get 'books/new'
  post 'books'=>'books#create'
  get 'books/show'
  get 'books/edit'
  get 'books/destroy'
  get 'books/index'
  get 'homes/top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
