Rails.application.routes.draw do
  get 'example/goalimage'

  get 'check/checklist' => 'check#checklist'
  get 'check/checkpass' => 'check#checkpass'
  get 'check/checkprogress' => 'check#checkprogress'
  get 'check/progresscontent' => 'check#progresscontent'

  get 'records/recordimage' => 'records#recordimage'
  get 'records/recordpage' => 'records#recordpage'
  get 'records/recordwell' => 'records#recordwell'

  get 'goals/goaldecision' => 'goals#goaldecision'
  get 'goals/goalconfirm' => 'goals#goalconfirm'

  get '/' => 'home#start'
  get 'menu' => 'home#menu'
  get 'login' => 'home#login'
  get 'new' => 'home#new'
  get 'top' => 'home#top'

  post 'home/authentication' => 'home#authentication'
  post 'home/create' => 'home#create'
  post 'home/logout' => 'home#logout'
  post 'records/recordcreate' => 'records#recordcreate'
  post 'goals/goalcreate' => 'goals#goalcreate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
