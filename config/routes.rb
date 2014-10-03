Rails.application.routes.draw do
  get 'windhelm/center'

  get 'windhelm/cne'

  get 'windhelm/cn'

  get 'windhelm/cs'

  get 'windhelm/cw'

  get 'windhelm/ce'

  get 'windhelm/cnw'

  get 'windhelm/csw'

  get 'windhelm/cse'

  devise_for :users
  root 'static_pages#index'
  get 'static_pages/index'

  get 'static_pages/about'

end
