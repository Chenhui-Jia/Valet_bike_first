Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'user#add'
  get 'user/add'
  get 'about/aboutUs'
  get 'about/contact'

end
