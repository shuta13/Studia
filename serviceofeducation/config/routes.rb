Rails.application.routes.draw do
  get 'records/recordimage' => 'records#recordimage'
  get 'records/recordpage' => 'records#recordpage'
  get 'records/recordwell' => 'records#recordwell'

  get 'goals/goaldecision' => 'goals#goaldecision'
  get 'goals/goalconfirm' => 'goals#goalconfirm'

  get 'top' => 'home#top'
  post 'records/recordcreate' => 'records#recordcreate'
  post 'goals/goalcreate' => 'goals#goalcreate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
