Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'

  get 'portfolio' => 'static_pages#portfolio'
  get 'contact'   => 'static_pages#contact'
	match '/send_mail', to: 'static_pages#send_mail', via: 'post'

end
