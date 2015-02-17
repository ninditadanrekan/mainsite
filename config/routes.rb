Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  get 'portfolio' => 'static_pages#portfolio'
  get 'about'     => 'static/pages#about'
  get 'contact'   => 'static_pages#contact'

end
